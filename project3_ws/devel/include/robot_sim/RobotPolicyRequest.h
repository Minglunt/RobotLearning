// Generated by gencpp from file robot_sim/RobotPolicyRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_SIM_MESSAGE_ROBOTPOLICYREQUEST_H
#define ROBOT_SIM_MESSAGE_ROBOTPOLICYREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_sim
{
template <class ContainerAllocator>
struct RobotPolicyRequest_
{
  typedef RobotPolicyRequest_<ContainerAllocator> Type;

  RobotPolicyRequest_()
    : robot_state()  {
    }
  RobotPolicyRequest_(const ContainerAllocator& _alloc)
    : robot_state(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _robot_state_type;
  _robot_state_type robot_state;





  typedef boost::shared_ptr< ::robot_sim::RobotPolicyRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_sim::RobotPolicyRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RobotPolicyRequest_

typedef ::robot_sim::RobotPolicyRequest_<std::allocator<void> > RobotPolicyRequest;

typedef boost::shared_ptr< ::robot_sim::RobotPolicyRequest > RobotPolicyRequestPtr;
typedef boost::shared_ptr< ::robot_sim::RobotPolicyRequest const> RobotPolicyRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_sim::RobotPolicyRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_sim::RobotPolicyRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robot_sim

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'robot_sim': ['/home/minglun/project3_ws/src/robot_sim/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robot_sim::RobotPolicyRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_sim::RobotPolicyRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_sim::RobotPolicyRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_sim::RobotPolicyRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_sim::RobotPolicyRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_sim::RobotPolicyRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_sim::RobotPolicyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6ba5a851eb3e75180022de39699d0bf4";
  }

  static const char* value(const ::robot_sim::RobotPolicyRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6ba5a851eb3e7518ULL;
  static const uint64_t static_value2 = 0x0022de39699d0bf4ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_sim::RobotPolicyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_sim/RobotPolicyRequest";
  }

  static const char* value(const ::robot_sim::RobotPolicyRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_sim::RobotPolicyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[] robot_state\n\
\n\
";
  }

  static const char* value(const ::robot_sim::RobotPolicyRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_sim::RobotPolicyRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robot_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotPolicyRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_sim::RobotPolicyRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_sim::RobotPolicyRequest_<ContainerAllocator>& v)
  {
    s << indent << "robot_state[]" << std::endl;
    for (size_t i = 0; i < v.robot_state.size(); ++i)
    {
      s << indent << "  robot_state[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.robot_state[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SIM_MESSAGE_ROBOTPOLICYREQUEST_H
