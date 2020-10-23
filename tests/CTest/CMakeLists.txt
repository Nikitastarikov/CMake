cmake_minimum_required(VERSION 3.16 FATAL_ERROR)

###########################################CTEST########################################

# does the application run
add_test(NAME Runs COMMAND Simple -a 3,10,3)

# define a function to simplify adding tests
function(test_education target arg arg1 result)
  add_test(NAME Comp"${arg} ${arg1}" COMMAND ${target} ${arg} ${arg1})
  set_tests_properties(Comp"${arg} ${arg1}"
    PROPERTIES PASS_REGULAR_EXPRESSION ${result}
  )
endfunction(test_education)

function(test_sum target arg arg1 result)
  add_test(NAME Comp"${arg} ${arg1}" COMMAND ${target} ${arg} ${arg1})
  set_tests_properties(Comp"${arg} ${arg1}"
    PROPERTIES PASS_REGULAR_EXPRESSION ${result}
  )
endfunction(test_sum)

function(test target arg arg1 result)
  add_test(NAME Comp"${arg} ${arg1}" COMMAND ${target} ${arg} ${arg1})
  set_tests_properties(Comp"${arg} ${arg1}"
    PROPERTIES PASS_REGULAR_EXPRESSION ${result}
  )
endfunction(test)

# do a bunch of result based tests
test_education(Simple -a 1,1,1 "D < 0")
test_education(Simple -a 3,10,3 "x1 is -0.333333\nx2 is -3")
test_education(Simple -a 4,13,-1 "x1 is 0.0751838\nx2 is -3.32518")

test_sum(Simple -a 1,1 "1 V 1 is 2")
test_sum(Simple -a -1,23 "-1 V 23 is 22")
test_sum(Simple -a 0,3 "0 V 3 is 3")

test(Simple -a 1 "Arguments for mathematical calculations\n\t2 args - sum\n\t3 args - quadratic_equation")
