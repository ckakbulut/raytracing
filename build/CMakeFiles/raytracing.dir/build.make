# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Kerem2001/cpp/raytracing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Kerem2001/cpp/raytracing/build

# Include any dependencies generated for this target.
include CMakeFiles/raytracing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/raytracing.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/raytracing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/raytracing.dir/flags.make

CMakeFiles/raytracing.dir/raytracing.cpp.o: CMakeFiles/raytracing.dir/flags.make
CMakeFiles/raytracing.dir/raytracing.cpp.o: ../raytracing.cpp
CMakeFiles/raytracing.dir/raytracing.cpp.o: CMakeFiles/raytracing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Kerem2001/cpp/raytracing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/raytracing.dir/raytracing.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raytracing.dir/raytracing.cpp.o -MF CMakeFiles/raytracing.dir/raytracing.cpp.o.d -o CMakeFiles/raytracing.dir/raytracing.cpp.o -c /Users/Kerem2001/cpp/raytracing/raytracing.cpp

CMakeFiles/raytracing.dir/raytracing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytracing.dir/raytracing.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Kerem2001/cpp/raytracing/raytracing.cpp > CMakeFiles/raytracing.dir/raytracing.cpp.i

CMakeFiles/raytracing.dir/raytracing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytracing.dir/raytracing.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Kerem2001/cpp/raytracing/raytracing.cpp -o CMakeFiles/raytracing.dir/raytracing.cpp.s

# Object files for target raytracing
raytracing_OBJECTS = \
"CMakeFiles/raytracing.dir/raytracing.cpp.o"

# External object files for target raytracing
raytracing_EXTERNAL_OBJECTS =

libraytracing.a: CMakeFiles/raytracing.dir/raytracing.cpp.o
libraytracing.a: CMakeFiles/raytracing.dir/build.make
libraytracing.a: CMakeFiles/raytracing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Kerem2001/cpp/raytracing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libraytracing.a"
	$(CMAKE_COMMAND) -P CMakeFiles/raytracing.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/raytracing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/raytracing.dir/build: libraytracing.a
.PHONY : CMakeFiles/raytracing.dir/build

CMakeFiles/raytracing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/raytracing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/raytracing.dir/clean

CMakeFiles/raytracing.dir/depend:
	cd /Users/Kerem2001/cpp/raytracing/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Kerem2001/cpp/raytracing /Users/Kerem2001/cpp/raytracing /Users/Kerem2001/cpp/raytracing/build /Users/Kerem2001/cpp/raytracing/build /Users/Kerem2001/cpp/raytracing/build/CMakeFiles/raytracing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/raytracing.dir/depend

