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
CMAKE_SOURCE_DIR = /home/omar/Task2/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/omar/Task2/build

# Utility rule file for model_geneus.

# Include the progress variables for this target.
include model/CMakeFiles/model_geneus.dir/progress.make

model_geneus: model/CMakeFiles/model_geneus.dir/build.make

.PHONY : model_geneus

# Rule to build all files generated by this target.
model/CMakeFiles/model_geneus.dir/build: model_geneus

.PHONY : model/CMakeFiles/model_geneus.dir/build

model/CMakeFiles/model_geneus.dir/clean:
	cd /home/omar/Task2/build/model && $(CMAKE_COMMAND) -P CMakeFiles/model_geneus.dir/cmake_clean.cmake
.PHONY : model/CMakeFiles/model_geneus.dir/clean

model/CMakeFiles/model_geneus.dir/depend:
	cd /home/omar/Task2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/omar/Task2/src /home/omar/Task2/src/model /home/omar/Task2/build /home/omar/Task2/build/model /home/omar/Task2/build/model/CMakeFiles/model_geneus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : model/CMakeFiles/model_geneus.dir/depend

