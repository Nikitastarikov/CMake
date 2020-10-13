# CMake generated Testfile for 
# Source directory: /home/nikita/Study/compilers/CMake/tests/CTest
# Build directory: /home/nikita/Study/compilers/CMake/build/tests/CTest
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Runs "/home/nikita/Study/compilers/CMake/build/src/main/Simple" "3" "10" "3")
set_tests_properties(Runs PROPERTIES  _BACKTRACE_TRIPLES "/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;6;add_test;/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;0;")
add_test(Comp"1 1 1" "/home/nikita/Study/compilers/CMake/build/src/main/Simple" "1" "1" "1")
set_tests_properties(Comp"1 1 1" PROPERTIES  PASS_REGULAR_EXPRESSION "D < 0" _BACKTRACE_TRIPLES "/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;10;add_test;/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;31;test_education;/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;0;")
add_test(Comp"3 10 3" "/home/nikita/Study/compilers/CMake/build/src/main/Simple" "3" "10" "3")
set_tests_properties(Comp"3 10 3" PROPERTIES  PASS_REGULAR_EXPRESSION "x1 is -0.333333
x2 is -3" _BACKTRACE_TRIPLES "/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;10;add_test;/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;32;test_education;/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;0;")
add_test(Comp"4 13 -1" "/home/nikita/Study/compilers/CMake/build/src/main/Simple" "4" "13" "-1")
set_tests_properties(Comp"4 13 -1" PROPERTIES  PASS_REGULAR_EXPRESSION "x1 is 0.0751838
x2 is -3.32518" _BACKTRACE_TRIPLES "/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;10;add_test;/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;33;test_education;/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;0;")
add_test(Comp"1 1" "/home/nikita/Study/compilers/CMake/build/src/main/Simple" "1" "1")
set_tests_properties(Comp"1 1" PROPERTIES  PASS_REGULAR_EXPRESSION "1 V 1 is 2" _BACKTRACE_TRIPLES "/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;17;add_test;/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;35;test_sum;/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;0;")
add_test(Comp"-1 23" "/home/nikita/Study/compilers/CMake/build/src/main/Simple" "-1" "23")
set_tests_properties(Comp"-1 23" PROPERTIES  PASS_REGULAR_EXPRESSION "-1 V 23 is 22" _BACKTRACE_TRIPLES "/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;17;add_test;/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;36;test_sum;/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;0;")
add_test(Comp"0 3" "/home/nikita/Study/compilers/CMake/build/src/main/Simple" "0" "3")
set_tests_properties(Comp"0 3" PROPERTIES  PASS_REGULAR_EXPRESSION "0 V 3 is 3" _BACKTRACE_TRIPLES "/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;17;add_test;/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;37;test_sum;/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;0;")
add_test(Comp1 "/home/nikita/Study/compilers/CMake/build/src/main/Simple" "1")
set_tests_properties(Comp1 PROPERTIES  PASS_REGULAR_EXPRESSION "./Simple arg1 arg2- arg1 V arg2 is res
./Simple arg1 arg2 arg3- quadratic equation" _BACKTRACE_TRIPLES "/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;24;add_test;/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;39;test;/home/nikita/Study/compilers/CMake/tests/CTest/CMakeLists.txt;0;")
