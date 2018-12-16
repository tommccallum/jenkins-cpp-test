cmake_minimum_required(VERSION 2.8.12)
project(jenkins-test-cpp)

SET(GCC_COVERAGE_COMPILE_FLAGS "-Wall")
add_definitions("-std=c++11")
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${GCC_COVERAGE_COMPILE_FLAGS}")

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

# includes all .cpp files from our src directory
include_directories(src)
file(GLOB_RECURSE PROJECT_SOURCE "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp")

# this will remove main.cpp so we can build tests
set(PROJECT_MAIN "${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp")
list(REMOVE_ITEM PROJECT_SOURCE ${PROJECT_MAIN})

include_directories(${CONAN_INCLUDE_DIRS})
add_library(mytestlib STATIC ${PROJECT_SOURCE})
add_executable(myprog ${PROJECT_MAIN})
target_link_libraries(myprog mytestlib ${CONAN_LIBS})

# required for Valgrind tests
include (CTest)
add_custom_target(myprog_memtest ALL
         COMMAND ${CMAKE_CTEST_COMMAND} --force-new-ctest-process --leak-check=yes --test-action memcheck
         COMMAND cat "${CMAKE_BINARY_DIR}/Testing/Temporary/MemoryChecker.*.log")

enable_testing()
add_subdirectory(tests)
