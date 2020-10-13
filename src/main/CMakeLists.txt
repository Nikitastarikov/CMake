cmake_minimum_required(VERSION 3.16 FATAL_ERROR)

add_executable(Simple main.cpp)

if (USE_MYLIB)
	list(APPEND EXTRA_LIBS libsimple)
	list(APPEND EXTRA_LIBS libcryptographic)
endif()

target_link_libraries(Simple PUBLIC ${EXTRA_LIBS})

target_include_directories(Simple 
	PUBLIC ${PROJECT_BINARY_DIR}
	INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}
)

install(TARGETS Simple DESTINATION bin)
install(FILES "${PROJECT_BINARY_DIR}/SimpleConfig.h"
	DESTINATION include
)
