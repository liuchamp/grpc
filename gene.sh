#!/bin/sh
# Generate rpc file

# proto
work_path=$(dirname $0)
cd ${work_path}
for inter in proto/*
do 
    for file in $inter/* 
    do 
        echo $file
        protoc -I . --grpc_out=src/main --plugin=protoc-gen-grpc=`which grpc_cpp_plugin` $file
        protoc -I . --cpp_out=src/main $file
    done
done