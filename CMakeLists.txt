cmake_minimum_required(VERSION 3.16 FATAL_ERROR)

project(Simple VERSION 1.0)

option(USE_MYLIB "Use my lib" ON)
configure_file(SimpleConfig.h.in SimpleConfig.h)

if (USE_MYLIB)
	add_subdirectory(include/libsimple)
	add_subdirectory(include/libcryptographic)
	list(APPEND EXTRA_LIBS libsimple)
	list(APPEND EXTRA_LIBS libcryptographic)
endif()

add_executable(Simple main.cpp)

target_link_libraries(Simple PUBLIC ${EXTRA_LIBS})

target_include_directories(Simple PUBLIC
	${PROJECT_BINARY_DIR}
)

install(TARGETS Simple DESTINATION bin)
install(FILES "${PROJECT_BINARY_DIR}/SimpleConfig.h"
	DESTINATION include
)

#enable_testing()
include(CTest)

# does the application run
add_test(NAME Runs COMMAND Simple 3 10 3)

# define a function to simplify adding tests
function(test_education target arg arg1 arg2 result)
  add_test(NAME Comp"${arg} ${arg1} ${arg2}" COMMAND ${target} ${arg} ${arg1} ${arg2})
  set_tests_properties(Comp"${arg} ${arg1} ${arg2}"
    PROPERTIES PASS_REGULAR_EXPRESSION ${result}
  )
endfunction(test_education)

function(test_sum target arg arg1 result)
  add_test(NAME Comp"${arg} ${arg1}" COMMAND ${target} ${arg} ${arg1})
  set_tests_properties(Comp"${arg} ${arg1}"
    PROPERTIES PASS_REGULAR_EXPRESSION ${result}
  )
endfunction(test_sum)

function(test target arg result)
  add_test(NAME Comp${arg} COMMAND ${target} ${arg})
  set_tests_properties(Comp${arg}
    PROPERTIES PASS_REGULAR_EXPRESSION ${result}
  )
endfunction(test)

# do a bunch of result based tests
test_education(Simple 1 1 1 "iscriminant less than 0, roots are insubstantial")
test_education(Simple 3 10 3 "x1 is -0.333333\nx2 is -3")
test_education(Simple 4 13 -1 "x1 is 0.0751838\nx2 is -3.32518")

test_sum(Simple 1 1 "1 V 1 is 2")
test_sum(Simple -1 23 "-1 V 23 is 22")
test_sum(Simple 0 3 "0 V 3 is 3")

test(Simple 1 "./Simple arg1 arg2- arg1 V arg2 is res\n./Simple arg1 arg2 arg3- quadratic equation")