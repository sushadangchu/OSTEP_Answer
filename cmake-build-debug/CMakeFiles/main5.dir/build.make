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
CMAKE_COMMAND = /home/ldl/clion-2020.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/ldl/clion-2020.1/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ldl/OS_Study

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ldl/OS_Study/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/main5.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/main5.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main5.dir/flags.make

CMakeFiles/main5.dir/5/5.c.o: CMakeFiles/main5.dir/flags.make
CMakeFiles/main5.dir/5/5.c.o: ../5/5.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldl/OS_Study/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/main5.dir/5/5.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/main5.dir/5/5.c.o   -c /home/ldl/OS_Study/5/5.c

CMakeFiles/main5.dir/5/5.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main5.dir/5/5.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldl/OS_Study/5/5.c > CMakeFiles/main5.dir/5/5.c.i

CMakeFiles/main5.dir/5/5.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main5.dir/5/5.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldl/OS_Study/5/5.c -o CMakeFiles/main5.dir/5/5.c.s

# Object files for target main5
main5_OBJECTS = \
"CMakeFiles/main5.dir/5/5.c.o"

# External object files for target main5
main5_EXTERNAL_OBJECTS =

main5: CMakeFiles/main5.dir/5/5.c.o
main5: CMakeFiles/main5.dir/build.make
main5: CMakeFiles/main5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldl/OS_Study/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable main5"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main5.dir/build: main5

.PHONY : CMakeFiles/main5.dir/build

CMakeFiles/main5.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main5.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main5.dir/clean

CMakeFiles/main5.dir/depend:
	cd /home/ldl/OS_Study/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldl/OS_Study /home/ldl/OS_Study /home/ldl/OS_Study/cmake-build-debug /home/ldl/OS_Study/cmake-build-debug /home/ldl/OS_Study/cmake-build-debug/CMakeFiles/main5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main5.dir/depend
