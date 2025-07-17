cmake_minimum_required(VERSION 3.16)

project(qtsvg-test CXX)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package (Qt6 CONFIG REQUIRED COMPONENTS Core Svg)
add_executable(test_qtsvg test_qtsvg.cpp)
target_link_libraries(test_qtsvg Qt6::Core Qt6::Svg)

enable_testing()
add_test(NAME test_qtsvg COMMAND test_qtsvg)

