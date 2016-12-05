cmake_minimum_required(VERSION 2.8.11)
project(ChatServerTest)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

set(CMAKE_CXX_FLAGS "-std=c++11")

find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})
include_directories(/usr/include/gmock)

add_executable(ChatServerTest
   User.h
   MockUser.h
   ChatTest.cpp
   Chat.h
   Chat.cpp)
target_link_libraries(ChatServerTest ${GTEST_LIBRARIES} pthread gmock_main gmock)
