# CMake generated Testfile for 
# Source directory: /home/tom/Development/jenkins-cpp-test/tests
# Build directory: /home/tom/Development/jenkins-cpp-test/build/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(myprog "/home/tom/Development/jenkins-cpp-test/build/bin/myprog_test")
set_tests_properties(myprog PROPERTIES  WORKING_DIRECTORY "/home/tom/Development/jenkins-cpp-test/tests")
