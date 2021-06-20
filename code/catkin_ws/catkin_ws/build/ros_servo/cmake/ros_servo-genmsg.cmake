# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_servo: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iros_servo:/home/cart/catkin_ws/src/ros_servo/msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Ivision_msgs:/opt/ros/melodic/share/vision_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_servo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cart/catkin_ws/src/ros_servo/msg/CartControl.msg" NAME_WE)
add_custom_target(_ros_servo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_servo" "/home/cart/catkin_ws/src/ros_servo/msg/CartControl.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_servo
  "/home/cart/catkin_ws/src/ros_servo/msg/CartControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_servo
)

### Generating Services

### Generating Module File
_generate_module_cpp(ros_servo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_servo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_servo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_servo_generate_messages ros_servo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cart/catkin_ws/src/ros_servo/msg/CartControl.msg" NAME_WE)
add_dependencies(ros_servo_generate_messages_cpp _ros_servo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_servo_gencpp)
add_dependencies(ros_servo_gencpp ros_servo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_servo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ros_servo
  "/home/cart/catkin_ws/src/ros_servo/msg/CartControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_servo
)

### Generating Services

### Generating Module File
_generate_module_eus(ros_servo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_servo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ros_servo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ros_servo_generate_messages ros_servo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cart/catkin_ws/src/ros_servo/msg/CartControl.msg" NAME_WE)
add_dependencies(ros_servo_generate_messages_eus _ros_servo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_servo_geneus)
add_dependencies(ros_servo_geneus ros_servo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_servo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_servo
  "/home/cart/catkin_ws/src/ros_servo/msg/CartControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_servo
)

### Generating Services

### Generating Module File
_generate_module_lisp(ros_servo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_servo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_servo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_servo_generate_messages ros_servo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cart/catkin_ws/src/ros_servo/msg/CartControl.msg" NAME_WE)
add_dependencies(ros_servo_generate_messages_lisp _ros_servo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_servo_genlisp)
add_dependencies(ros_servo_genlisp ros_servo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_servo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ros_servo
  "/home/cart/catkin_ws/src/ros_servo/msg/CartControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_servo
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ros_servo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_servo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ros_servo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ros_servo_generate_messages ros_servo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cart/catkin_ws/src/ros_servo/msg/CartControl.msg" NAME_WE)
add_dependencies(ros_servo_generate_messages_nodejs _ros_servo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_servo_gennodejs)
add_dependencies(ros_servo_gennodejs ros_servo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_servo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_servo
  "/home/cart/catkin_ws/src/ros_servo/msg/CartControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_servo
)

### Generating Services

### Generating Module File
_generate_module_py(ros_servo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_servo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_servo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_servo_generate_messages ros_servo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cart/catkin_ws/src/ros_servo/msg/CartControl.msg" NAME_WE)
add_dependencies(ros_servo_generate_messages_py _ros_servo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_servo_genpy)
add_dependencies(ros_servo_genpy ros_servo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_servo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_servo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_servo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(ros_servo_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ros_servo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ros_servo_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET vision_msgs_generate_messages_cpp)
  add_dependencies(ros_servo_generate_messages_cpp vision_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_servo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_servo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(ros_servo_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ros_servo_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ros_servo_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET vision_msgs_generate_messages_eus)
  add_dependencies(ros_servo_generate_messages_eus vision_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_servo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_servo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(ros_servo_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ros_servo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ros_servo_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET vision_msgs_generate_messages_lisp)
  add_dependencies(ros_servo_generate_messages_lisp vision_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_servo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_servo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(ros_servo_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ros_servo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ros_servo_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET vision_msgs_generate_messages_nodejs)
  add_dependencies(ros_servo_generate_messages_nodejs vision_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_servo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_servo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_servo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(ros_servo_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ros_servo_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ros_servo_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET vision_msgs_generate_messages_py)
  add_dependencies(ros_servo_generate_messages_py vision_msgs_generate_messages_py)
endif()
