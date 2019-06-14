# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "grasp_clustering: 1 messages, 0 services")

set(MSG_I_FLAGS "-Igrasp_clustering:/home/minglun/project0_ws/src/project0/grasp_clustering/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(grasp_clustering_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/minglun/project0_ws/src/project0/grasp_clustering/msg/GraspInfo.msg" NAME_WE)
add_custom_target(_grasp_clustering_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "grasp_clustering" "/home/minglun/project0_ws/src/project0/grasp_clustering/msg/GraspInfo.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(grasp_clustering
  "/home/minglun/project0_ws/src/project0/grasp_clustering/msg/GraspInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasp_clustering
)

### Generating Services

### Generating Module File
_generate_module_cpp(grasp_clustering
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasp_clustering
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(grasp_clustering_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(grasp_clustering_generate_messages grasp_clustering_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/minglun/project0_ws/src/project0/grasp_clustering/msg/GraspInfo.msg" NAME_WE)
add_dependencies(grasp_clustering_generate_messages_cpp _grasp_clustering_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grasp_clustering_gencpp)
add_dependencies(grasp_clustering_gencpp grasp_clustering_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasp_clustering_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(grasp_clustering
  "/home/minglun/project0_ws/src/project0/grasp_clustering/msg/GraspInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grasp_clustering
)

### Generating Services

### Generating Module File
_generate_module_eus(grasp_clustering
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grasp_clustering
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(grasp_clustering_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(grasp_clustering_generate_messages grasp_clustering_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/minglun/project0_ws/src/project0/grasp_clustering/msg/GraspInfo.msg" NAME_WE)
add_dependencies(grasp_clustering_generate_messages_eus _grasp_clustering_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grasp_clustering_geneus)
add_dependencies(grasp_clustering_geneus grasp_clustering_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasp_clustering_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(grasp_clustering
  "/home/minglun/project0_ws/src/project0/grasp_clustering/msg/GraspInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasp_clustering
)

### Generating Services

### Generating Module File
_generate_module_lisp(grasp_clustering
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasp_clustering
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(grasp_clustering_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(grasp_clustering_generate_messages grasp_clustering_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/minglun/project0_ws/src/project0/grasp_clustering/msg/GraspInfo.msg" NAME_WE)
add_dependencies(grasp_clustering_generate_messages_lisp _grasp_clustering_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grasp_clustering_genlisp)
add_dependencies(grasp_clustering_genlisp grasp_clustering_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasp_clustering_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(grasp_clustering
  "/home/minglun/project0_ws/src/project0/grasp_clustering/msg/GraspInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grasp_clustering
)

### Generating Services

### Generating Module File
_generate_module_nodejs(grasp_clustering
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grasp_clustering
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(grasp_clustering_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(grasp_clustering_generate_messages grasp_clustering_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/minglun/project0_ws/src/project0/grasp_clustering/msg/GraspInfo.msg" NAME_WE)
add_dependencies(grasp_clustering_generate_messages_nodejs _grasp_clustering_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grasp_clustering_gennodejs)
add_dependencies(grasp_clustering_gennodejs grasp_clustering_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasp_clustering_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(grasp_clustering
  "/home/minglun/project0_ws/src/project0/grasp_clustering/msg/GraspInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasp_clustering
)

### Generating Services

### Generating Module File
_generate_module_py(grasp_clustering
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasp_clustering
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(grasp_clustering_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(grasp_clustering_generate_messages grasp_clustering_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/minglun/project0_ws/src/project0/grasp_clustering/msg/GraspInfo.msg" NAME_WE)
add_dependencies(grasp_clustering_generate_messages_py _grasp_clustering_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grasp_clustering_genpy)
add_dependencies(grasp_clustering_genpy grasp_clustering_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasp_clustering_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasp_clustering)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasp_clustering
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(grasp_clustering_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grasp_clustering)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grasp_clustering
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(grasp_clustering_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasp_clustering)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasp_clustering
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(grasp_clustering_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grasp_clustering)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grasp_clustering
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(grasp_clustering_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasp_clustering)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasp_clustering\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasp_clustering
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(grasp_clustering_generate_messages_py std_msgs_generate_messages_py)
endif()
