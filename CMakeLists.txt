cmake_minimum_required(VERSION 3.0)
project(dimanalysis)

find_package (Eigen3 3.3 REQUIRED NO_MODULE)

add_executable(dimanalysis src/main.cpp src/dimension.cpp src/system.cpp)
target_link_libraries (dimanalysis Eigen3::Eigen)