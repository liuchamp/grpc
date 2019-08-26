cmake_minimum_required(VERSION 3.13)
project(demo1)

# generate grpc -> c++ source
# need bin/{linux,mac,win}/ has some plugin for platform

if ()


# setting other libaray

# setting other source files for libaray




set(CMAKE_CXX_STANDARD 17)
enable_testing()
add_subdirectory(src/test)

aux_source_directory(src/main DIR_SRCS)

add_executable(demo1 ${DIR_SRCS})
