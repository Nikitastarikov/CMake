# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nikita/Study/compilers/CMake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nikita/Study/compilers/CMake/build

# Include any dependencies generated for this target.
include external/cxxopts/src/CMakeFiles/example.dir/depend.make

# Include the progress variables for this target.
include external/cxxopts/src/CMakeFiles/example.dir/progress.make

# Include the compile flags for this target's objects.
include external/cxxopts/src/CMakeFiles/example.dir/flags.make

external/cxxopts/src/CMakeFiles/example.dir/example.cpp.o: external/cxxopts/src/CMakeFiles/example.dir/flags.make
external/cxxopts/src/CMakeFiles/example.dir/example.cpp.o: ../external/cxxopts/src/example.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nikita/Study/compilers/CMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/cxxopts/src/CMakeFiles/example.dir/example.cpp.o"
	cd /home/nikita/Study/compilers/CMake/build/external/cxxopts/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example.dir/example.cpp.o -c /home/nikita/Study/compilers/CMake/external/cxxopts/src/example.cpp

external/cxxopts/src/CMakeFiles/example.dir/example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example.dir/example.cpp.i"
	cd /home/nikita/Study/compilers/CMake/build/external/cxxopts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nikita/Study/compilers/CMake/external/cxxopts/src/example.cpp > CMakeFiles/example.dir/example.cpp.i

external/cxxopts/src/CMakeFiles/example.dir/example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example.dir/example.cpp.s"
	cd /home/nikita/Study/compilers/CMake/build/external/cxxopts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nikita/Study/compilers/CMake/external/cxxopts/src/example.cpp -o CMakeFiles/example.dir/example.cpp.s

# Object files for target example
example_OBJECTS = \
"CMakeFiles/example.dir/example.cpp.o"

# External object files for target example
example_EXTERNAL_OBJECTS =

external/cxxopts/src/example: external/cxxopts/src/CMakeFiles/example.dir/example.cpp.o
external/cxxopts/src/example: external/cxxopts/src/CMakeFiles/example.dir/build.make
external/cxxopts/src/example: external/cxxopts/src/CMakeFiles/example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nikita/Study/compilers/CMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example"
	cd /home/nikita/Study/compilers/CMake/build/external/cxxopts/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/cxxopts/src/CMakeFiles/example.dir/build: external/cxxopts/src/example

.PHONY : external/cxxopts/src/CMakeFiles/example.dir/build

external/cxxopts/src/CMakeFiles/example.dir/clean:
	cd /home/nikita/Study/compilers/CMake/build/external/cxxopts/src && $(CMAKE_COMMAND) -P CMakeFiles/example.dir/cmake_clean.cmake
.PHONY : external/cxxopts/src/CMakeFiles/example.dir/clean

external/cxxopts/src/CMakeFiles/example.dir/depend:
	cd /home/nikita/Study/compilers/CMake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nikita/Study/compilers/CMake /home/nikita/Study/compilers/CMake/external/cxxopts/src /home/nikita/Study/compilers/CMake/build /home/nikita/Study/compilers/CMake/build/external/cxxopts/src /home/nikita/Study/compilers/CMake/build/external/cxxopts/src/CMakeFiles/example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/cxxopts/src/CMakeFiles/example.dir/depend

