add_library(libsimple lib.cpp)

target_include_directories(libsimple INTERFACE
	${CMAKE_CURRENT_SOURCE_DIR}
)

install(TARGETS libsimple DESTINATION lib)
install(FILES lib.hpp DESTINATION include)