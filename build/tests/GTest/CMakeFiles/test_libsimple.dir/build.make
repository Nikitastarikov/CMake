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
include tests/GTest/CMakeFiles/test_libsimple.dir/depend.make

# Include the progress variables for this target.
include tests/GTest/CMakeFiles/test_libsimple.dir/progress.make

# Include the compile flags for this target's objects.
include tests/GTest/CMakeFiles/test_libsimple.dir/flags.make

tests/GTest/CMakeFiles/test_libsimple.dir/test_libsimple.cpp.o: tests/GTest/CMakeFiles/test_libsimple.dir/flags.make
tests/GTest/CMakeFiles/test_libsimple.dir/test_libsimple.cpp.o: ../tests/GTest/test_libsimple.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nikita/Study/compilers/CMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/GTest/CMakeFiles/test_libsimple.dir/test_libsimple.cpp.o"
	cd /home/nikita/Study/compilers/CMake/build/tests/GTest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_libsimple.dir/test_libsimple.cpp.o -c /home/nikita/Study/compilers/CMake/tests/GTest/test_libsimple.cpp

tests/GTest/CMakeFiles/test_libsimple.dir/test_libsimple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_libsimple.dir/test_libsimple.cpp.i"
	cd /home/nikita/Study/compilers/CMake/build/tests/GTest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nikita/Study/compilers/CMake/tests/GTest/test_libsimple.cpp > CMakeFiles/test_libsimple.dir/test_libsimple.cpp.i

tests/GTest/CMakeFiles/test_libsimple.dir/test_libsimple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_libsimple.dir/test_libsimple.cpp.s"
	cd /home/nikita/Study/compilers/CMake/build/tests/GTest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nikita/Study/compilers/CMake/tests/GTest/test_libsimple.cpp -o CMakeFiles/test_libsimple.dir/test_libsimple.cpp.s

# Object files for target test_libsimple
test_libsimple_OBJECTS = \
"CMakeFiles/test_libsimple.dir/test_libsimple.cpp.o"

# External object files for target test_libsimple
test_libsimple_EXTERNAL_OBJECTS =

tests/GTest/test_libsimple: tests/GTest/CMakeFiles/test_libsimple.dir/test_libsimple.cpp.o
tests/GTest/test_libsimple: tests/GTest/CMakeFiles/test_libsimple.dir/build.make
tests/GTest/test_libsimple: lib/libgtest_main.a
tests/GTest/test_libsimple: src/libsimple/liblibsimple.a
tests/GTest/test_libsimple: lib/libgtest.a
tests/GTest/test_libsimple: tests/GTest/CMakeFiles/test_libsimple.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nikita/Study/compilers/CMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_libsimple"
	cd /home/nikita/Study/compilers/CMake/build/tests/GTest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_libsimple.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/GTest/CMakeFiles/test_libsimple.dir/build: tests/GTest/test_libsimple

.PHONY : tests/GTest/CMakeFiles/test_libsimple.dir/build

tests/GTest/CMakeFiles/test_libsimple.dir/clean:
	cd /home/nikita/Study/compilers/CMake/build/tests/GTest && $(CMAKE_COMMAND) -P CMakeFiles/test_libsimple.dir/cmake_clean.cmake
.PHONY : tests/GTest/CMakeFiles/test_libsimple.dir/clean

tests/GTest/CMakeFiles/test_libsimple.dir/depend:
	cd /home/nikita/Study/compilers/CMake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nikita/Study/compilers/CMake /home/nikita/Study/compilers/CMake/tests/GTest /home/nikita/Study/compilers/CMake/build /home/nikita/Study/compilers/CMake/build/tests/GTest /home/nikita/Study/compilers/CMake/build/tests/GTest/CMakeFiles/test_libsimple.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/GTest/CMakeFiles/test_libsimple.dir/depend

