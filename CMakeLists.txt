cmake_minimum_required(VERSION 3.0.0)
project(nn-from-scratch VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(nn-from-scratch main.cpp src/neuron.cpp src/layer.cpp)
include_directories(src)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
