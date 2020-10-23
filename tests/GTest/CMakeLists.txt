cmake_minimum_required(VERSION 3.16 FATAL_ERROR)

##################################GTest##############################

# Now simply link against gtest or gtest_main as needed. Eg
add_executable(test_libsimple test_libsimple.cpp)

target_link_libraries(
	test_libsimple 
		
		PRIVATE
			gtest_main
			libsimple
)

add_test(NAME example_test COMMAND test_libsimple)