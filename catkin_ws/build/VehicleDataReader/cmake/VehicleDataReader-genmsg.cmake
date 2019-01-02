# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "VehicleDataReader: 1 messages, 0 services")

set(MSG_I_FLAGS "-IVehicleDataReader:/home/pawan/catkin_ws/src/VehicleDataReader/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-IVehicleDataReader:/home/pawan/catkin_ws/src/VehicleDataReader/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(VehicleDataReader_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pawan/catkin_ws/src/VehicleDataReader/msg/CANMessage.msg" NAME_WE)
add_custom_target(_VehicleDataReader_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "VehicleDataReader" "/home/pawan/catkin_ws/src/VehicleDataReader/msg/CANMessage.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(VehicleDataReader
  "/home/pawan/catkin_ws/src/VehicleDataReader/msg/CANMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/VehicleDataReader
)

### Generating Services

### Generating Module File
_generate_module_cpp(VehicleDataReader
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/VehicleDataReader
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(VehicleDataReader_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(VehicleDataReader_generate_messages VehicleDataReader_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pawan/catkin_ws/src/VehicleDataReader/msg/CANMessage.msg" NAME_WE)
add_dependencies(VehicleDataReader_generate_messages_cpp _VehicleDataReader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(VehicleDataReader_gencpp)
add_dependencies(VehicleDataReader_gencpp VehicleDataReader_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS VehicleDataReader_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(VehicleDataReader
  "/home/pawan/catkin_ws/src/VehicleDataReader/msg/CANMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/VehicleDataReader
)

### Generating Services

### Generating Module File
_generate_module_eus(VehicleDataReader
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/VehicleDataReader
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(VehicleDataReader_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(VehicleDataReader_generate_messages VehicleDataReader_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pawan/catkin_ws/src/VehicleDataReader/msg/CANMessage.msg" NAME_WE)
add_dependencies(VehicleDataReader_generate_messages_eus _VehicleDataReader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(VehicleDataReader_geneus)
add_dependencies(VehicleDataReader_geneus VehicleDataReader_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS VehicleDataReader_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(VehicleDataReader
  "/home/pawan/catkin_ws/src/VehicleDataReader/msg/CANMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/VehicleDataReader
)

### Generating Services

### Generating Module File
_generate_module_lisp(VehicleDataReader
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/VehicleDataReader
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(VehicleDataReader_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(VehicleDataReader_generate_messages VehicleDataReader_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pawan/catkin_ws/src/VehicleDataReader/msg/CANMessage.msg" NAME_WE)
add_dependencies(VehicleDataReader_generate_messages_lisp _VehicleDataReader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(VehicleDataReader_genlisp)
add_dependencies(VehicleDataReader_genlisp VehicleDataReader_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS VehicleDataReader_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(VehicleDataReader
  "/home/pawan/catkin_ws/src/VehicleDataReader/msg/CANMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/VehicleDataReader
)

### Generating Services

### Generating Module File
_generate_module_nodejs(VehicleDataReader
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/VehicleDataReader
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(VehicleDataReader_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(VehicleDataReader_generate_messages VehicleDataReader_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pawan/catkin_ws/src/VehicleDataReader/msg/CANMessage.msg" NAME_WE)
add_dependencies(VehicleDataReader_generate_messages_nodejs _VehicleDataReader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(VehicleDataReader_gennodejs)
add_dependencies(VehicleDataReader_gennodejs VehicleDataReader_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS VehicleDataReader_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(VehicleDataReader
  "/home/pawan/catkin_ws/src/VehicleDataReader/msg/CANMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/VehicleDataReader
)

### Generating Services

### Generating Module File
_generate_module_py(VehicleDataReader
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/VehicleDataReader
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(VehicleDataReader_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(VehicleDataReader_generate_messages VehicleDataReader_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pawan/catkin_ws/src/VehicleDataReader/msg/CANMessage.msg" NAME_WE)
add_dependencies(VehicleDataReader_generate_messages_py _VehicleDataReader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(VehicleDataReader_genpy)
add_dependencies(VehicleDataReader_genpy VehicleDataReader_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS VehicleDataReader_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/VehicleDataReader)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/VehicleDataReader
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(VehicleDataReader_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET VehicleDataReader_generate_messages_cpp)
  add_dependencies(VehicleDataReader_generate_messages_cpp VehicleDataReader_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/VehicleDataReader)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/VehicleDataReader
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(VehicleDataReader_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET VehicleDataReader_generate_messages_eus)
  add_dependencies(VehicleDataReader_generate_messages_eus VehicleDataReader_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/VehicleDataReader)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/VehicleDataReader
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(VehicleDataReader_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET VehicleDataReader_generate_messages_lisp)
  add_dependencies(VehicleDataReader_generate_messages_lisp VehicleDataReader_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/VehicleDataReader)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/VehicleDataReader
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(VehicleDataReader_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET VehicleDataReader_generate_messages_nodejs)
  add_dependencies(VehicleDataReader_generate_messages_nodejs VehicleDataReader_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/VehicleDataReader)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/VehicleDataReader\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/VehicleDataReader
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(VehicleDataReader_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET VehicleDataReader_generate_messages_py)
  add_dependencies(VehicleDataReader_generate_messages_py VehicleDataReader_generate_messages_py)
endif()
