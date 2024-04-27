cmake_minimum_required(VERSION 3.10)

project(
  raytracing
  VERSION 1.0
  LANGUAGES CXX
  )

# specify the c++ standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)


add_library(raytracing raytracing.cpp raytracing.hpp)
add_executable(main main.cpp)
target_link_libraries(main PRIVATE raytracing)
