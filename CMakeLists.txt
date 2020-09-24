cmake_minimum_required(VERSION 3.16 FATAL_ERROR)

project(Simple VERSION 1.0)

option(USE_MYLIB "Use my lib" ON)
configure_file(SimpleConfig.h.in SimpleConfig.h)

if (USE_MYLIB)
	add_subdirectory(include/libsimple )
	list(APPEND EXTRA_LIBS libsimple)
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