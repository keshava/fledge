cmake_minimum_required (VERSION 2.8.8)
project (FledgeStoragePlugins)

set(CMAKE_CXX_FLAGS "-std=c++11 -O3")

add_subdirectory(common)
add_subdirectory(postgres)
add_subdirectory(sqlite)
