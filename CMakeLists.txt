cmake_minimum_required(VERSION 3.13)
project(demo1)

# 设置产生grpc代码

# 设置lib

# 设置include




set(CMAKE_CXX_STANDARD 17)
enable_testing()
add_subdirectory(src/test)

aux_source_directory(src/main DIR_SRCS)

add_executable(demo1 ${DIR_SRCS})
