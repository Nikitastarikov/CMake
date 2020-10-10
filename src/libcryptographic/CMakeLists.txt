add_library(libcryptographic libcryptographic.cpp)

target_include_directories(libcryptographic INTERFACE
	${CMAKE_CURRENT_SOURCE_DIR}
)

install(TARGETS libcryptographic DESTINATION libcryptographic)
install(FILES libcryptographic.hpp DESTINATION include)