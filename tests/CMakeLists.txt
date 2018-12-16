cmake_minimum_required(VERSION 3.11.2)

file(GLOB_RECURSE TEST_SOURCE "${CMAKE_CURRENT_SOURCE_DIR}/*.cpp")

add_executable(myprog_test ${TEST_SOURCE})
target_link_libraries(myprog_test mytestlib ${CONAN_LIBS})

add_test(NAME myprog
		 WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
		 COMMAND ${CMAKE_BINARY_DIR}/bin/myprog_test -r junit -o ${CMAKE_BINARY_DIR}/results.xml)
