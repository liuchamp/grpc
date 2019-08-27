cmake_minimum_required(VERSION 3.13)
project(demo1)

file(GLOB PROTO_FILE ${CMAKE_CURRENT_SOURCE_DIR}/proto/**/*.proto)

foreach (p ${PROTO_FILE})
    string(REPLACE "${PROJECT_SOURCE_DIR}/" "" smk ${p})
    STRING(REGEX REPLACE "[^/]proto" "" proto_file_name ${smk})

    message("s --> ${proto_file_name}")
    list(APPEND PROTO_SRCS " ${proto_file_name}.pb.cc")
        add_custom_command(
                OUTPUT "${proto_file_name}.pb.h" "${proto_file_name}.pb.cc"
                COMMAND protoc --proto_path=${CMAKE_CURRENT_SOURCE_DIR}/proto  --cpp_out=${CMAKE_CURRENT_SOURCE_DIR}/main ${smk}
                DEPENDS ${smk}
        )
endforeach (p)

message(STATUS ${PROTO_SRCS})
include_directories(proto)
if (Linux)
    # 设置产生grpc代码
    # 设置lib
    # 设置include
endif ()


set(CMAKE_CXX_STANDARD 17)
enable_testing()
add_subdirectory(src/test)


aux_source_directory(src/main DIR_SRCS)

add_executable(demo1 ${DIR_SRCS} ${PROTO_SRCS})

target_link_libraries(demo1 protobuf)