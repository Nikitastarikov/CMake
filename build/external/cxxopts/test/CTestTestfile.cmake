# CMake generated Testfile for 
# Source directory: /home/nikita/Study/compilers/CMake/external/cxxopts/test
# Build directory: /home/nikita/Study/compilers/CMake/build/external/cxxopts/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(options "options_test")
set_tests_properties(options PROPERTIES  _BACKTRACE_TRIPLES "/home/nikita/Study/compilers/CMake/external/cxxopts/test/CMakeLists.txt;4;add_test;/home/nikita/Study/compilers/CMake/external/cxxopts/test/CMakeLists.txt;0;")
add_test(find-package-test "/usr/bin/ctest" "-C" "--build-and-test" "/home/nikita/Study/compilers/CMake/external/cxxopts/test/find-package-test" "/home/nikita/Study/compilers/CMake/build/external/cxxopts/test/find-package-test" "--build-generator" "Unix Makefiles" "--build-makeprogram" "/usr/bin/make" "--build-options" "-DCMAKE_CXX_COMPILER=/usr/bin/c++" "-DCMAKE_BUILD_TYPE=" "-Dcxxopts_DIR=/home/nikita/Study/compilers/CMake/build/external/cxxopts")
set_tests_properties(find-package-test PROPERTIES  _BACKTRACE_TRIPLES "/home/nikita/Study/compilers/CMake/external/cxxopts/test/CMakeLists.txt;7;add_test;/home/nikita/Study/compilers/CMake/external/cxxopts/test/CMakeLists.txt;0;")
add_test(add-subdirectory-test "/usr/bin/ctest" "-C" "--build-and-test" "/home/nikita/Study/compilers/CMake/external/cxxopts/test/add-subdirectory-test" "/home/nikita/Study/compilers/CMake/build/external/cxxopts/test/add-subdirectory-test" "--build-generator" "Unix Makefiles" "--build-makeprogram" "/usr/bin/make" "--build-options" "-DCMAKE_CXX_COMPILER=/usr/bin/c++" "-DCMAKE_BUILD_TYPE=")
set_tests_properties(add-subdirectory-test PROPERTIES  _BACKTRACE_TRIPLES "/home/nikita/Study/compilers/CMake/external/cxxopts/test/CMakeLists.txt;21;add_test;/home/nikita/Study/compilers/CMake/external/cxxopts/test/CMakeLists.txt;0;")
