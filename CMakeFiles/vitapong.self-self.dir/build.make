# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/falcon/CodeProjs/vitapong

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/falcon/CodeProjs/vitapong

# Utility rule file for vitapong.self-self.

# Include any custom commands dependencies for this target.
include CMakeFiles/vitapong.self-self.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/vitapong.self-self.dir/progress.make

CMakeFiles/vitapong.self-self: vitapong.self.out
	/usr/bin/cmake -E copy /home/falcon/CodeProjs/vitapong/vitapong.self.out vitapong.self

vitapong.self.out: vitapong.velf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/falcon/CodeProjs/vitapong/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Creating SELF vitapong.self"
	/usr/local/vitasdk/bin/vita-make-fself -c -s /home/falcon/CodeProjs/vitapong/vitapong.velf /home/falcon/CodeProjs/vitapong/vitapong.self.out

vitapong.self-self: CMakeFiles/vitapong.self-self
vitapong.self-self: vitapong.self.out
vitapong.self-self: CMakeFiles/vitapong.self-self.dir/build.make
.PHONY : vitapong.self-self

# Rule to build all files generated by this target.
CMakeFiles/vitapong.self-self.dir/build: vitapong.self-self
.PHONY : CMakeFiles/vitapong.self-self.dir/build

CMakeFiles/vitapong.self-self.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vitapong.self-self.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vitapong.self-self.dir/clean

CMakeFiles/vitapong.self-self.dir/depend:
	cd /home/falcon/CodeProjs/vitapong && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/falcon/CodeProjs/vitapong /home/falcon/CodeProjs/vitapong /home/falcon/CodeProjs/vitapong /home/falcon/CodeProjs/vitapong /home/falcon/CodeProjs/vitapong/CMakeFiles/vitapong.self-self.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/vitapong.self-self.dir/depend
