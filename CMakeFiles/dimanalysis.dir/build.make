# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /home/wyli/.local/lib/python3.11/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/wyli/.local/lib/python3.11/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wyli/Repos/dimanalysis

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wyli/Repos/dimanalysis

# Include any dependencies generated for this target.
include CMakeFiles/dimanalysis.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/dimanalysis.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/dimanalysis.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dimanalysis.dir/flags.make

CMakeFiles/dimanalysis.dir/src/main.cpp.o: CMakeFiles/dimanalysis.dir/flags.make
CMakeFiles/dimanalysis.dir/src/main.cpp.o: src/main.cpp
CMakeFiles/dimanalysis.dir/src/main.cpp.o: CMakeFiles/dimanalysis.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wyli/Repos/dimanalysis/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dimanalysis.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dimanalysis.dir/src/main.cpp.o -MF CMakeFiles/dimanalysis.dir/src/main.cpp.o.d -o CMakeFiles/dimanalysis.dir/src/main.cpp.o -c /home/wyli/Repos/dimanalysis/src/main.cpp

CMakeFiles/dimanalysis.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dimanalysis.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wyli/Repos/dimanalysis/src/main.cpp > CMakeFiles/dimanalysis.dir/src/main.cpp.i

CMakeFiles/dimanalysis.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dimanalysis.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wyli/Repos/dimanalysis/src/main.cpp -o CMakeFiles/dimanalysis.dir/src/main.cpp.s

CMakeFiles/dimanalysis.dir/src/dimension.cpp.o: CMakeFiles/dimanalysis.dir/flags.make
CMakeFiles/dimanalysis.dir/src/dimension.cpp.o: src/dimension.cpp
CMakeFiles/dimanalysis.dir/src/dimension.cpp.o: CMakeFiles/dimanalysis.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wyli/Repos/dimanalysis/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/dimanalysis.dir/src/dimension.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dimanalysis.dir/src/dimension.cpp.o -MF CMakeFiles/dimanalysis.dir/src/dimension.cpp.o.d -o CMakeFiles/dimanalysis.dir/src/dimension.cpp.o -c /home/wyli/Repos/dimanalysis/src/dimension.cpp

CMakeFiles/dimanalysis.dir/src/dimension.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dimanalysis.dir/src/dimension.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wyli/Repos/dimanalysis/src/dimension.cpp > CMakeFiles/dimanalysis.dir/src/dimension.cpp.i

CMakeFiles/dimanalysis.dir/src/dimension.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dimanalysis.dir/src/dimension.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wyli/Repos/dimanalysis/src/dimension.cpp -o CMakeFiles/dimanalysis.dir/src/dimension.cpp.s

CMakeFiles/dimanalysis.dir/src/system.cpp.o: CMakeFiles/dimanalysis.dir/flags.make
CMakeFiles/dimanalysis.dir/src/system.cpp.o: src/system.cpp
CMakeFiles/dimanalysis.dir/src/system.cpp.o: CMakeFiles/dimanalysis.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wyli/Repos/dimanalysis/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/dimanalysis.dir/src/system.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dimanalysis.dir/src/system.cpp.o -MF CMakeFiles/dimanalysis.dir/src/system.cpp.o.d -o CMakeFiles/dimanalysis.dir/src/system.cpp.o -c /home/wyli/Repos/dimanalysis/src/system.cpp

CMakeFiles/dimanalysis.dir/src/system.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dimanalysis.dir/src/system.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wyli/Repos/dimanalysis/src/system.cpp > CMakeFiles/dimanalysis.dir/src/system.cpp.i

CMakeFiles/dimanalysis.dir/src/system.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dimanalysis.dir/src/system.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wyli/Repos/dimanalysis/src/system.cpp -o CMakeFiles/dimanalysis.dir/src/system.cpp.s

# Object files for target dimanalysis
dimanalysis_OBJECTS = \
"CMakeFiles/dimanalysis.dir/src/main.cpp.o" \
"CMakeFiles/dimanalysis.dir/src/dimension.cpp.o" \
"CMakeFiles/dimanalysis.dir/src/system.cpp.o"

# External object files for target dimanalysis
dimanalysis_EXTERNAL_OBJECTS =

dimanalysis: CMakeFiles/dimanalysis.dir/src/main.cpp.o
dimanalysis: CMakeFiles/dimanalysis.dir/src/dimension.cpp.o
dimanalysis: CMakeFiles/dimanalysis.dir/src/system.cpp.o
dimanalysis: CMakeFiles/dimanalysis.dir/build.make
dimanalysis: CMakeFiles/dimanalysis.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wyli/Repos/dimanalysis/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable dimanalysis"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dimanalysis.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dimanalysis.dir/build: dimanalysis
.PHONY : CMakeFiles/dimanalysis.dir/build

CMakeFiles/dimanalysis.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dimanalysis.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dimanalysis.dir/clean

CMakeFiles/dimanalysis.dir/depend:
	cd /home/wyli/Repos/dimanalysis && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wyli/Repos/dimanalysis /home/wyli/Repos/dimanalysis /home/wyli/Repos/dimanalysis /home/wyli/Repos/dimanalysis /home/wyli/Repos/dimanalysis/CMakeFiles/dimanalysis.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dimanalysis.dir/depend

