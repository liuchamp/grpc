cmake_minimum_required(VERSION 3.13)
project(demo1)
set(CMAKE_CXX_STANDARD 17)
execute_process(COMMAND sh ${PROJECT_SOURCE_DIR}/gene.sh)
if (Linux)
    # generate grpc -> c++ source
    # need bin/{linux,mac,win}/ has some plugin for platform


    # setting other libaray

    # setting other source files for libaray


endif ()

find_package(Protobuf REQUIRED)
if (PROTOBUF_FOUND)
    message(STATUS "PROTOBUF  library found")
else ()
    message(FATAL_ERROR "protobuf library is needed but cant be found")
endif ()


enable_testing()
add_subdirectory(src/test)
aux_source_directory(src/main DIR_SRCS)


add_executable(demo1 ${DIR_SRCS})

# arg1, proto 目录默认就是。 arg2,产生条件

function(genareter arg)

endfunction()