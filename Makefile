# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_COMMAND = /home/wyli/.local/lib/python3.11/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/wyli/.local/lib/python3.11/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wyli/Repos/dimanalysis

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wyli/Repos/dimanalysis

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/home/wyli/.local/lib/python3.11/site-packages/cmake/data/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/home/wyli/.local/lib/python3.11/site-packages/cmake/data/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/wyli/Repos/dimanalysis/CMakeFiles /home/wyli/Repos/dimanalysis//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/wyli/Repos/dimanalysis/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named dimanalysis

# Build rule for target.
dimanalysis: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 dimanalysis
.PHONY : dimanalysis

# fast build rule for target.
dimanalysis/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/dimanalysis.dir/build.make CMakeFiles/dimanalysis.dir/build
.PHONY : dimanalysis/fast

src/dimension.o: src/dimension.cpp.o
.PHONY : src/dimension.o

# target to build an object file
src/dimension.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/dimanalysis.dir/build.make CMakeFiles/dimanalysis.dir/src/dimension.cpp.o
.PHONY : src/dimension.cpp.o

src/dimension.i: src/dimension.cpp.i
.PHONY : src/dimension.i

# target to preprocess a source file
src/dimension.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/dimanalysis.dir/build.make CMakeFiles/dimanalysis.dir/src/dimension.cpp.i
.PHONY : src/dimension.cpp.i

src/dimension.s: src/dimension.cpp.s
.PHONY : src/dimension.s

# target to generate assembly for a file
src/dimension.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/dimanalysis.dir/build.make CMakeFiles/dimanalysis.dir/src/dimension.cpp.s
.PHONY : src/dimension.cpp.s

src/main.o: src/main.cpp.o
.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/dimanalysis.dir/build.make CMakeFiles/dimanalysis.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/dimanalysis.dir/build.make CMakeFiles/dimanalysis.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/dimanalysis.dir/build.make CMakeFiles/dimanalysis.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

src/system.o: src/system.cpp.o
.PHONY : src/system.o

# target to build an object file
src/system.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/dimanalysis.dir/build.make CMakeFiles/dimanalysis.dir/src/system.cpp.o
.PHONY : src/system.cpp.o

src/system.i: src/system.cpp.i
.PHONY : src/system.i

# target to preprocess a source file
src/system.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/dimanalysis.dir/build.make CMakeFiles/dimanalysis.dir/src/system.cpp.i
.PHONY : src/system.cpp.i

src/system.s: src/system.cpp.s
.PHONY : src/system.s

# target to generate assembly for a file
src/system.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/dimanalysis.dir/build.make CMakeFiles/dimanalysis.dir/src/system.cpp.s
.PHONY : src/system.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... dimanalysis"
	@echo "... src/dimension.o"
	@echo "... src/dimension.i"
	@echo "... src/dimension.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/system.o"
	@echo "... src/system.i"
	@echo "... src/system.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

