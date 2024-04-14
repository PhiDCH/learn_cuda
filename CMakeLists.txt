cmake_minimum_required(VERSION 3.8 FATAL_ERROR)
project(hello LANGUAGES CXX CUDA)

file(GLOB cpu_source_files "${CMAKE_SOURCE_DIR}/*.cpp")
file(GLOB gpu_source_files "${CMAKE_SOURCE_DIR}/*.cu")

enable_language(CUDA)
add_executable(test ${cpu_source_files} ${gpu_source_files})


# old style CMAKE_VERSION < 3.8
# find_package(CUDA)
# CUDA_ADD_LIBRARY(gpu_lib ${gpu_source_files})
# add_executable(test ${cpu_source_files})
# target_link_libraries(test gpu_lib)