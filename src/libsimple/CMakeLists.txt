add_library(libsimple STATIC lib.cpp lib.hpp)

# state that anybody linking to us needs to include the current source dir
# to find MathFunctions.h, while we don't.
target_include_directories(libsimple INTERFACE
	${CMAKE_CURRENT_SOURCE_DIR}
)