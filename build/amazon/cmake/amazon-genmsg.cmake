# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "amazon: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iamazon:/home/tyler/ros_ws/src/amazon/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(amazon_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tyler/ros_ws/src/amazon/msg/Object.msg" NAME_WE)
add_custom_target(_amazon_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amazon" "/home/tyler/ros_ws/src/amazon/msg/Object.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/tyler/ros_ws/src/amazon/msg/Grasp.msg" NAME_WE)
add_custom_target(_amazon_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amazon" "/home/tyler/ros_ws/src/amazon/msg/Grasp.msg" "geometry_msgs/Point"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(amazon
  "/home/tyler/ros_ws/src/amazon/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amazon
)
_generate_msg_cpp(amazon
  "/home/tyler/ros_ws/src/amazon/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amazon
)

### Generating Services

### Generating Module File
_generate_module_cpp(amazon
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amazon
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(amazon_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(amazon_generate_messages amazon_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tyler/ros_ws/src/amazon/msg/Object.msg" NAME_WE)
add_dependencies(amazon_generate_messages_cpp _amazon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tyler/ros_ws/src/amazon/msg/Grasp.msg" NAME_WE)
add_dependencies(amazon_generate_messages_cpp _amazon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(amazon_gencpp)
add_dependencies(amazon_gencpp amazon_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS amazon_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(amazon
  "/home/tyler/ros_ws/src/amazon/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amazon
)
_generate_msg_lisp(amazon
  "/home/tyler/ros_ws/src/amazon/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amazon
)

### Generating Services

### Generating Module File
_generate_module_lisp(amazon
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amazon
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(amazon_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(amazon_generate_messages amazon_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tyler/ros_ws/src/amazon/msg/Object.msg" NAME_WE)
add_dependencies(amazon_generate_messages_lisp _amazon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tyler/ros_ws/src/amazon/msg/Grasp.msg" NAME_WE)
add_dependencies(amazon_generate_messages_lisp _amazon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(amazon_genlisp)
add_dependencies(amazon_genlisp amazon_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS amazon_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(amazon
  "/home/tyler/ros_ws/src/amazon/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amazon
)
_generate_msg_py(amazon
  "/home/tyler/ros_ws/src/amazon/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amazon
)

### Generating Services

### Generating Module File
_generate_module_py(amazon
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amazon
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(amazon_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(amazon_generate_messages amazon_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tyler/ros_ws/src/amazon/msg/Object.msg" NAME_WE)
add_dependencies(amazon_generate_messages_py _amazon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tyler/ros_ws/src/amazon/msg/Grasp.msg" NAME_WE)
add_dependencies(amazon_generate_messages_py _amazon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(amazon_genpy)
add_dependencies(amazon_genpy amazon_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS amazon_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amazon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amazon
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(amazon_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(amazon_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amazon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amazon
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(amazon_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(amazon_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amazon)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amazon\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amazon
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(amazon_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(amazon_generate_messages_py geometry_msgs_generate_messages_py)
