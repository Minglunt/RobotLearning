#!/usr/bin/env python

import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim

from torch.utils.data.dataset import Dataset
from torch.utils.data import DataLoader

from robot_sim.srv import RobotAction
from robot_sim.srv import RobotActionRequest
from robot_sim.srv import RobotActionResponse
from robot_sim.srv import RobotPolicy
from robot_sim.srv import RobotPolicyRequest
from robot_sim.srv import RobotPolicyResponse

import rospy
import numpy as np
import random


class ReplayMemory(object):
    def __init__(self, capacity):
        self.capacity = capacity
        self.position = 0
        self.memory = []

    def store(self, state):
        if len(self.memory) < self.capacity:
            self.memory.append(None)
        self.memory[self.position] = state
        if self.position+1 < self.capacity:
            self.position += 1
        else:
            self.position = 0

    def sample(self, batch_size):
        return random.sample(self.memory, batch_size)

    def __len__(self):
        return len(self.memory)


class MyDNN(nn.Module):
    def __init__(self, input_dim):
        super(MyDNN, self).__init__() # find parent of this class
        self.fc1 = nn.Linear(input_dim, 32)
        #torch.nn.init.xavier_uniform_(self.fc1.weight, gain=1.0)
        self.fc1.weight.data.normal_(0, 0.1)
        self.fc2 = nn.Linear(32, 2)
        #torch.nn.init.xavier_uniform_(self.fc2.weight, gain=1.0)
        self.fc2.weight.data.normal_(0, 0.1)

    def forward(self, x):
        x = F.relu(self.fc1(x))
        x = F.relu(self.fc2(x))
        return x

    def predict(self, features):
        self.eval()
        #print(features)
        features = torch.from_numpy(features).float()
        return self.forward(features).detach().numpy()


class Env(object):
    def __init__(self):
        self.cartpole_action_service = rospy.ServiceProxy('cartpole_robot', RobotAction)
        self.req = RobotActionRequest()

    def get_random_sign(self):
        return 1.0 if random.random() < 0.5 else -1.0

    def reset(self):
        self.req.reset_robot = True
        self.req.reset_pole_angle = np.random.uniform(np.deg2rad(0), np.deg2rad(3))*self.get_random_sign()
        #print(req.reset_pole_angle)
        response = self.cartpole_action_service(self.req)
        response = response.robot_state
        response = np.array(response)
        # self.req.reset_robot = False
        return response

    def observation(self, action):
        self.req.reset_robot = False
        action = [action]
        self.req.action = action
        #print(self.req)
        response = self.cartpole_action_service(self.req)
        response = response.robot_state
        response = np.array(response)
        #print(response)
        if np.abs(response[1]) >= np.deg2rad(6) or np.abs(response[0]) >= 1.2:
            response = None
            reward = 0
        else:
            reward = 1
        return reward, response

    def action(self, output):
        #actions = np.linspace(-10, 10, num=21)
        actions = np.array([-10,10])
        n = np.argmax(output)
        action = actions[n]

        #k = np.array([21.13, -320.74, 30.23, -70.18])
        #action = np.dot(k, np.array(output))

        #print('-----')
        #print(action)
        #print(action)
        return action


class Train(object):
    def __init__(self):
        self.episode_num = 200
        self.batch_size = 32
        T = 200

        self.action_nn = MyDNN(4)
        self.target_nn = MyDNN(4)
        self.target_nn.load_state_dict(self.action_nn.state_dict())
        self.target_nn.eval()
        self.optimizer = optim.RMSprop(self.action_nn.parameters())
        self.memory = ReplayMemory(10000)
        for i in range(self.episode_num):
            init_state = Env().reset()
            episode_reward = 0
            state = init_state
            for t in range(T):
                action = self.select_action(i, state)
                #print(action)
                reward, new_state = Env().observation(action)
                D = [state, action, reward, new_state]
                self.memory.store(D)
                episode_reward += reward

                state = new_state

                #
                self.train_nn()
                if new_state is None:
                    break
            if i % 20 == 0:
                self.target_nn.load_state_dict(self.action_nn.state_dict())
            print(episode_reward)
        print('ready')

        self.implement()

    def select_action(self, episode, state):
        eps = max(1 - episode / self.episode_num, 0.01)
        #eps = 0.2
        sample = random.random()
        #actions = np.linspace(-10, 10, num=21)
        actions = np.array([-10,10])
        if sample > eps:
            output = self.action_nn.predict(state)
            n = np.argmax(output)
        else:
            n = random.randint(0,1)
        action = actions[n]
        #print(action)
        return action

    def train_nn(self):
        gamma = 0.999
        if len(self.memory) < self.batch_size:
            return
        mini_batch = self.memory.sample(self.batch_size)
        mini_batch = np.array(mini_batch)
        #print(mini_batch)
        state_batch = mini_batch[:,0]
        action_batch = mini_batch[:,1]
        reward_batch = mini_batch[:,2]
        #print(reward_batch)
        next_state_batch = mini_batch[:,3]

        state_values = []
        next_state_value = np.zeros(self.batch_size)
        self.action_nn.train()

        for i in range(self.batch_size):
            if next_state_batch[i] is not None:
                next_state_values = self.target_nn.predict(next_state_batch[i])
                #print(next_state_values)
                next_state_value[i] = max(next_state_values)
            if action_batch[i] == -10:
                s = self.action_nn.predict(state_batch[i])[0]
            else:
                s = self.action_nn.predict(state_batch[i])[1]
            #print(self.action_nn.predict(state_batch[i]))
            state_values.append(s)
        state_values = np.array(state_values)
        state_value = state_values
        expected_state_value = (next_state_value * gamma) + np.array(reward_batch)
        #print(expected_state_value)
        #print(state_value)

        expected_state_value = expected_state_value.astype(np.double)
        state_value = state_value.astype(np.double)
        expected_state_value = expected_state_value.reshape(-1,1)
        #state_value = state_value.reshape(-1,1)
        state_value = torch.tensor(state_value, requires_grad=True)
        expected_state_value = torch.tensor(expected_state_value, requires_grad=True)
        #print(expected_state_value)
        #print(state_value)
        self.optimizer.zero_grad()
        #print(state_value)
        loss = F.smooth_l1_loss(state_value, expected_state_value)
        print(loss)
        # optimize the model
        loss.backward()
        #for param in self.action_nn.parameters():
            #print(param.grad)
         #   if param.grad is not None:
          #      param.grad.data.clamp_(-1, 1)
        self.optimizer.step()

    def implement(self):
        rospy.init_node('cartpole_policy', anonymous=True)
        policy_service = rospy.Service('cartpole_policy', RobotPolicy, self.callback)
        print('yes')
        rospy.spin()

    def callback(self, req):
        print('continue')
        #req = RobotPolicyRequest
        state = req.robot_state
        #print('---------')
        #print(state)
        #print('----------')
        state = np.array(state)
        output = self.target_nn.predict(state)
        #print('-----')
        #print(output)
        action = Env().action(output)
        action = [action]
        #print(response)
        return RobotPolicyResponse(action)


if __name__ == '__main__':
    rospy.init_node('cartpole_policy', anonymous=True)
    t = Train()
    print('ok')
