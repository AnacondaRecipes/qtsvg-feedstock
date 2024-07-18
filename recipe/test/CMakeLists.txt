cmake_minimum_required (VERSION 3.0)

set (CMAKE_BUILD_TYPE "Release" CACHE STRING "build type")

project (qtsvg-test CXX)

find_package (Qt6 CONFIG REQUIRED COMPONENTS Svg)

add_executable (test_qtsvg test_qtsvg.cpp)
target_link_libraries (test_qtsvg Qt6::Svg)

enable_testing ()
add_test (NAME test_qtsvg COMMAND test_qtsvg)
