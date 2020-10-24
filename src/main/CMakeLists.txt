cmake_minimum_required(VERSION 3.16 FATAL_ERROR)

list(APPEND EXTRA_LIBS libsimple)
list(APPEND EXTRA_LIBS cxxopts)

if(CXXOPTS_BUILD_EXAMPLES)

	message("INPUT!!!")
	add_executable(Simple main.cpp)

	target_link_libraries(
		Simple 

		PRIVATE
			${EXTRA_LIBS}
	)

	target_include_directories(Simple 
		PUBLIC ${PROJECT_BINARY_DIR}
		INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}
	)
endif()
