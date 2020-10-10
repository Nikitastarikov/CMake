cmake_minimum_required(VERSION 3.16 FATAL_ERROR)

project(Simple VERSION 1.0)

add_library(tutorial_compiler_flags INTERFACE)
target_compile_features(tutorial_compiler_flags INTERFACE cxx_std_11)

set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU>")
set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")
target_compile_options(tutorial_compiler_flags INTERFACE
  "$<${gcc_like_cxx}:$<BUILD_INTERFACE:-Wall;-Wextra;-Wshadow;-Wformat=2;-Wunused>>"
  "$<${msvc_cxx}:$<BUILD_INTERFACE:-W3>>"
)

option(USE_MYLIB "Use my lib" ON)

configure_file(SimpleConfig.h.in SimpleConfig.h)

if (USE_MYLIB)
	add_subdirectory(src/libsimple)
	add_subdirectory(src/libcryptographic)
	add_subdirectory(external)
	list(APPEND EXTRA_LIBS libsimple)
	list(APPEND EXTRA_LIBS libcryptographic)
endif()

add_executable(Simple src/main.cpp)

target_link_libraries(Simple PUBLIC ${EXTRA_LIBS})

target_include_directories(Simple PUBLIC
	${PROJECT_BINARY_DIR}
)

install(TARGETS Simple DESTINATION bin)
install(FILES "${PROJECT_BINARY_DIR}/SimpleConfig.h"
	DESTINATION include
)

###########################################GIT########################################

find_package(Git QUIET)
if(GIT_FOUND AND EXISTS "${PROJECT_SOURCE_DIR}/.git")
# Update submodules as needed
    option(GIT_SUBMODULE "Check submodules during build" ON)
    if(GIT_SUBMODULE)
        message(STATUS "Submodule update")
        execute_process(COMMAND ${GIT_EXECUTABLE} submodule update --init --recursive
                        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
                        RESULT_VARIABLE GIT_SUBMOD_RESULT)
        if(NOT GIT_SUBMOD_RESULT EQUAL "0")
            message(FATAL_ERROR "git submodule update --init failed with ${GIT_SUBMOD_RESULT}, please checkout submodules")
        endif()
    endif()
endif()

if(NOT EXISTS "${PROJECT_SOURCE_DIR}/external/cxxopts/CMakeLists.txt" AND "${PROJECT_SOURCE_DIR}/external/gtest/CMakeLists.txt")
    message(FATAL_ERROR "The submodules were not downloaded! GIT_SUBMODULE was turned off or failed. Please update submodules and try again.")
endif()



###########################################CTEST########################################
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