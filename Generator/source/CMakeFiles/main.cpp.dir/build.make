# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.23.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.23.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source

# Include any dependencies generated for this target.
include CMakeFiles/main.cpp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/main.cpp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/main.cpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.cpp.dir/flags.make

CMakeFiles/main.cpp.dir/Settings.cpp.o: CMakeFiles/main.cpp.dir/flags.make
CMakeFiles/main.cpp.dir/Settings.cpp.o: Settings.cpp
CMakeFiles/main.cpp.dir/Settings.cpp.o: CMakeFiles/main.cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.cpp.dir/Settings.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.cpp.dir/Settings.cpp.o -MF CMakeFiles/main.cpp.dir/Settings.cpp.o.d -o CMakeFiles/main.cpp.dir/Settings.cpp.o -c /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Settings.cpp

CMakeFiles/main.cpp.dir/Settings.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.cpp.dir/Settings.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Settings.cpp > CMakeFiles/main.cpp.dir/Settings.cpp.i

CMakeFiles/main.cpp.dir/Settings.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.cpp.dir/Settings.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Settings.cpp -o CMakeFiles/main.cpp.dir/Settings.cpp.s

CMakeFiles/main.cpp.dir/Generators/GenerationParameters.cpp.o: CMakeFiles/main.cpp.dir/flags.make
CMakeFiles/main.cpp.dir/Generators/GenerationParameters.cpp.o: Generators/GenerationParameters.cpp
CMakeFiles/main.cpp.dir/Generators/GenerationParameters.cpp.o: CMakeFiles/main.cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/main.cpp.dir/Generators/GenerationParameters.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.cpp.dir/Generators/GenerationParameters.cpp.o -MF CMakeFiles/main.cpp.dir/Generators/GenerationParameters.cpp.o.d -o CMakeFiles/main.cpp.dir/Generators/GenerationParameters.cpp.o -c /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/GenerationParameters.cpp

CMakeFiles/main.cpp.dir/Generators/GenerationParameters.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.cpp.dir/Generators/GenerationParameters.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/GenerationParameters.cpp > CMakeFiles/main.cpp.dir/Generators/GenerationParameters.cpp.i

CMakeFiles/main.cpp.dir/Generators/GenerationParameters.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.cpp.dir/Generators/GenerationParameters.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/GenerationParameters.cpp -o CMakeFiles/main.cpp.dir/Generators/GenerationParameters.cpp.s

CMakeFiles/main.cpp.dir/Generators/Genetic/GeneticParameters.cpp.o: CMakeFiles/main.cpp.dir/flags.make
CMakeFiles/main.cpp.dir/Generators/Genetic/GeneticParameters.cpp.o: Generators/Genetic/GeneticParameters.cpp
CMakeFiles/main.cpp.dir/Generators/Genetic/GeneticParameters.cpp.o: CMakeFiles/main.cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/main.cpp.dir/Generators/Genetic/GeneticParameters.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.cpp.dir/Generators/Genetic/GeneticParameters.cpp.o -MF CMakeFiles/main.cpp.dir/Generators/Genetic/GeneticParameters.cpp.o.d -o CMakeFiles/main.cpp.dir/Generators/Genetic/GeneticParameters.cpp.o -c /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/Genetic/GeneticParameters.cpp

CMakeFiles/main.cpp.dir/Generators/Genetic/GeneticParameters.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.cpp.dir/Generators/Genetic/GeneticParameters.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/Genetic/GeneticParameters.cpp > CMakeFiles/main.cpp.dir/Generators/Genetic/GeneticParameters.cpp.i

CMakeFiles/main.cpp.dir/Generators/Genetic/GeneticParameters.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.cpp.dir/Generators/Genetic/GeneticParameters.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/Genetic/GeneticParameters.cpp -o CMakeFiles/main.cpp.dir/Generators/Genetic/GeneticParameters.cpp.s

CMakeFiles/main.cpp.dir/Generators/Genetic/Mutations/MutationParameters.cpp.o: CMakeFiles/main.cpp.dir/flags.make
CMakeFiles/main.cpp.dir/Generators/Genetic/Mutations/MutationParameters.cpp.o: Generators/Genetic/Mutations/MutationParameters.cpp
CMakeFiles/main.cpp.dir/Generators/Genetic/Mutations/MutationParameters.cpp.o: CMakeFiles/main.cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/main.cpp.dir/Generators/Genetic/Mutations/MutationParameters.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.cpp.dir/Generators/Genetic/Mutations/MutationParameters.cpp.o -MF CMakeFiles/main.cpp.dir/Generators/Genetic/Mutations/MutationParameters.cpp.o.d -o CMakeFiles/main.cpp.dir/Generators/Genetic/Mutations/MutationParameters.cpp.o -c /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/Genetic/Mutations/MutationParameters.cpp

CMakeFiles/main.cpp.dir/Generators/Genetic/Mutations/MutationParameters.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.cpp.dir/Generators/Genetic/Mutations/MutationParameters.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/Genetic/Mutations/MutationParameters.cpp > CMakeFiles/main.cpp.dir/Generators/Genetic/Mutations/MutationParameters.cpp.i

CMakeFiles/main.cpp.dir/Generators/Genetic/Mutations/MutationParameters.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.cpp.dir/Generators/Genetic/Mutations/MutationParameters.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/Genetic/Mutations/MutationParameters.cpp -o CMakeFiles/main.cpp.dir/Generators/Genetic/Mutations/MutationParameters.cpp.s

CMakeFiles/main.cpp.dir/DataBase/DataBaseGenerator.cpp.o: CMakeFiles/main.cpp.dir/flags.make
CMakeFiles/main.cpp.dir/DataBase/DataBaseGenerator.cpp.o: DataBase/DataBaseGenerator.cpp
CMakeFiles/main.cpp.dir/DataBase/DataBaseGenerator.cpp.o: CMakeFiles/main.cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/main.cpp.dir/DataBase/DataBaseGenerator.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.cpp.dir/DataBase/DataBaseGenerator.cpp.o -MF CMakeFiles/main.cpp.dir/DataBase/DataBaseGenerator.cpp.o.d -o CMakeFiles/main.cpp.dir/DataBase/DataBaseGenerator.cpp.o -c /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/DataBase/DataBaseGenerator.cpp

CMakeFiles/main.cpp.dir/DataBase/DataBaseGenerator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.cpp.dir/DataBase/DataBaseGenerator.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/DataBase/DataBaseGenerator.cpp > CMakeFiles/main.cpp.dir/DataBase/DataBaseGenerator.cpp.i

CMakeFiles/main.cpp.dir/DataBase/DataBaseGenerator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.cpp.dir/DataBase/DataBaseGenerator.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/DataBase/DataBaseGenerator.cpp -o CMakeFiles/main.cpp.dir/DataBase/DataBaseGenerator.cpp.s

CMakeFiles/main.cpp.dir/Generators/TruthTable.cpp.o: CMakeFiles/main.cpp.dir/flags.make
CMakeFiles/main.cpp.dir/Generators/TruthTable.cpp.o: Generators/TruthTable.cpp
CMakeFiles/main.cpp.dir/Generators/TruthTable.cpp.o: CMakeFiles/main.cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/main.cpp.dir/Generators/TruthTable.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.cpp.dir/Generators/TruthTable.cpp.o -MF CMakeFiles/main.cpp.dir/Generators/TruthTable.cpp.o.d -o CMakeFiles/main.cpp.dir/Generators/TruthTable.cpp.o -c /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/TruthTable.cpp

CMakeFiles/main.cpp.dir/Generators/TruthTable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.cpp.dir/Generators/TruthTable.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/TruthTable.cpp > CMakeFiles/main.cpp.dir/Generators/TruthTable.cpp.i

CMakeFiles/main.cpp.dir/Generators/TruthTable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.cpp.dir/Generators/TruthTable.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/TruthTable.cpp -o CMakeFiles/main.cpp.dir/Generators/TruthTable.cpp.s

CMakeFiles/main.cpp.dir/Generators/SimpleGenerators.cpp.o: CMakeFiles/main.cpp.dir/flags.make
CMakeFiles/main.cpp.dir/Generators/SimpleGenerators.cpp.o: Generators/SimpleGenerators.cpp
CMakeFiles/main.cpp.dir/Generators/SimpleGenerators.cpp.o: CMakeFiles/main.cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/main.cpp.dir/Generators/SimpleGenerators.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.cpp.dir/Generators/SimpleGenerators.cpp.o -MF CMakeFiles/main.cpp.dir/Generators/SimpleGenerators.cpp.o.d -o CMakeFiles/main.cpp.dir/Generators/SimpleGenerators.cpp.o -c /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/SimpleGenerators.cpp

CMakeFiles/main.cpp.dir/Generators/SimpleGenerators.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.cpp.dir/Generators/SimpleGenerators.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/SimpleGenerators.cpp > CMakeFiles/main.cpp.dir/Generators/SimpleGenerators.cpp.i

CMakeFiles/main.cpp.dir/Generators/SimpleGenerators.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.cpp.dir/Generators/SimpleGenerators.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/SimpleGenerators.cpp -o CMakeFiles/main.cpp.dir/Generators/SimpleGenerators.cpp.s

CMakeFiles/main.cpp.dir/graph/GraphVertex.cpp.o: CMakeFiles/main.cpp.dir/flags.make
CMakeFiles/main.cpp.dir/graph/GraphVertex.cpp.o: graph/GraphVertex.cpp
CMakeFiles/main.cpp.dir/graph/GraphVertex.cpp.o: CMakeFiles/main.cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/main.cpp.dir/graph/GraphVertex.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.cpp.dir/graph/GraphVertex.cpp.o -MF CMakeFiles/main.cpp.dir/graph/GraphVertex.cpp.o.d -o CMakeFiles/main.cpp.dir/graph/GraphVertex.cpp.o -c /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/graph/GraphVertex.cpp

CMakeFiles/main.cpp.dir/graph/GraphVertex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.cpp.dir/graph/GraphVertex.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/graph/GraphVertex.cpp > CMakeFiles/main.cpp.dir/graph/GraphVertex.cpp.i

CMakeFiles/main.cpp.dir/graph/GraphVertex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.cpp.dir/graph/GraphVertex.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/graph/GraphVertex.cpp -o CMakeFiles/main.cpp.dir/graph/GraphVertex.cpp.s

CMakeFiles/main.cpp.dir/graph/OrientedGraph.cpp.o: CMakeFiles/main.cpp.dir/flags.make
CMakeFiles/main.cpp.dir/graph/OrientedGraph.cpp.o: graph/OrientedGraph.cpp
CMakeFiles/main.cpp.dir/graph/OrientedGraph.cpp.o: CMakeFiles/main.cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/main.cpp.dir/graph/OrientedGraph.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.cpp.dir/graph/OrientedGraph.cpp.o -MF CMakeFiles/main.cpp.dir/graph/OrientedGraph.cpp.o.d -o CMakeFiles/main.cpp.dir/graph/OrientedGraph.cpp.o -c /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/graph/OrientedGraph.cpp

CMakeFiles/main.cpp.dir/graph/OrientedGraph.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.cpp.dir/graph/OrientedGraph.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/graph/OrientedGraph.cpp > CMakeFiles/main.cpp.dir/graph/OrientedGraph.cpp.i

CMakeFiles/main.cpp.dir/graph/OrientedGraph.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.cpp.dir/graph/OrientedGraph.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/graph/OrientedGraph.cpp -o CMakeFiles/main.cpp.dir/graph/OrientedGraph.cpp.s

CMakeFiles/main.cpp.dir/Generators/Genetic/GenGenerator.cpp.o: CMakeFiles/main.cpp.dir/flags.make
CMakeFiles/main.cpp.dir/Generators/Genetic/GenGenerator.cpp.o: Generators/Genetic/GenGenerator.cpp
CMakeFiles/main.cpp.dir/Generators/Genetic/GenGenerator.cpp.o: CMakeFiles/main.cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/main.cpp.dir/Generators/Genetic/GenGenerator.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.cpp.dir/Generators/Genetic/GenGenerator.cpp.o -MF CMakeFiles/main.cpp.dir/Generators/Genetic/GenGenerator.cpp.o.d -o CMakeFiles/main.cpp.dir/Generators/Genetic/GenGenerator.cpp.o -c /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/Genetic/GenGenerator.cpp

CMakeFiles/main.cpp.dir/Generators/Genetic/GenGenerator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.cpp.dir/Generators/Genetic/GenGenerator.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/Genetic/GenGenerator.cpp > CMakeFiles/main.cpp.dir/Generators/Genetic/GenGenerator.cpp.i

CMakeFiles/main.cpp.dir/Generators/Genetic/GenGenerator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.cpp.dir/Generators/Genetic/GenGenerator.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/Generators/Genetic/GenGenerator.cpp -o CMakeFiles/main.cpp.dir/Generators/Genetic/GenGenerator.cpp.s

CMakeFiles/main.cpp.dir/circuits/Circuit.cpp.o: CMakeFiles/main.cpp.dir/flags.make
CMakeFiles/main.cpp.dir/circuits/Circuit.cpp.o: circuits/Circuit.cpp
CMakeFiles/main.cpp.dir/circuits/Circuit.cpp.o: CMakeFiles/main.cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/main.cpp.dir/circuits/Circuit.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.cpp.dir/circuits/Circuit.cpp.o -MF CMakeFiles/main.cpp.dir/circuits/Circuit.cpp.o.d -o CMakeFiles/main.cpp.dir/circuits/Circuit.cpp.o -c /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/circuits/Circuit.cpp

CMakeFiles/main.cpp.dir/circuits/Circuit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.cpp.dir/circuits/Circuit.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/circuits/Circuit.cpp > CMakeFiles/main.cpp.dir/circuits/Circuit.cpp.i

CMakeFiles/main.cpp.dir/circuits/Circuit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.cpp.dir/circuits/Circuit.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/circuits/Circuit.cpp -o CMakeFiles/main.cpp.dir/circuits/Circuit.cpp.s

CMakeFiles/main.cpp.dir/reliability/Reliability.cpp.o: CMakeFiles/main.cpp.dir/flags.make
CMakeFiles/main.cpp.dir/reliability/Reliability.cpp.o: reliability/Reliability.cpp
CMakeFiles/main.cpp.dir/reliability/Reliability.cpp.o: CMakeFiles/main.cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/main.cpp.dir/reliability/Reliability.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.cpp.dir/reliability/Reliability.cpp.o -MF CMakeFiles/main.cpp.dir/reliability/Reliability.cpp.o.d -o CMakeFiles/main.cpp.dir/reliability/Reliability.cpp.o -c /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/reliability/Reliability.cpp

CMakeFiles/main.cpp.dir/reliability/Reliability.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.cpp.dir/reliability/Reliability.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/reliability/Reliability.cpp > CMakeFiles/main.cpp.dir/reliability/Reliability.cpp.i

CMakeFiles/main.cpp.dir/reliability/Reliability.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.cpp.dir/reliability/Reliability.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/reliability/Reliability.cpp -o CMakeFiles/main.cpp.dir/reliability/Reliability.cpp.s

# Object files for target main.cpp
main_cpp_OBJECTS = \
"CMakeFiles/main.cpp.dir/Settings.cpp.o" \
"CMakeFiles/main.cpp.dir/Generators/GenerationParameters.cpp.o" \
"CMakeFiles/main.cpp.dir/Generators/Genetic/GeneticParameters.cpp.o" \
"CMakeFiles/main.cpp.dir/Generators/Genetic/Mutations/MutationParameters.cpp.o" \
"CMakeFiles/main.cpp.dir/DataBase/DataBaseGenerator.cpp.o" \
"CMakeFiles/main.cpp.dir/Generators/TruthTable.cpp.o" \
"CMakeFiles/main.cpp.dir/Generators/SimpleGenerators.cpp.o" \
"CMakeFiles/main.cpp.dir/graph/GraphVertex.cpp.o" \
"CMakeFiles/main.cpp.dir/graph/OrientedGraph.cpp.o" \
"CMakeFiles/main.cpp.dir/Generators/Genetic/GenGenerator.cpp.o" \
"CMakeFiles/main.cpp.dir/circuits/Circuit.cpp.o" \
"CMakeFiles/main.cpp.dir/reliability/Reliability.cpp.o"

# External object files for target main.cpp
main_cpp_EXTERNAL_OBJECTS =

main.cpp: CMakeFiles/main.cpp.dir/Settings.cpp.o
main.cpp: CMakeFiles/main.cpp.dir/Generators/GenerationParameters.cpp.o
main.cpp: CMakeFiles/main.cpp.dir/Generators/Genetic/GeneticParameters.cpp.o
main.cpp: CMakeFiles/main.cpp.dir/Generators/Genetic/Mutations/MutationParameters.cpp.o
main.cpp: CMakeFiles/main.cpp.dir/DataBase/DataBaseGenerator.cpp.o
main.cpp: CMakeFiles/main.cpp.dir/Generators/TruthTable.cpp.o
main.cpp: CMakeFiles/main.cpp.dir/Generators/SimpleGenerators.cpp.o
main.cpp: CMakeFiles/main.cpp.dir/graph/GraphVertex.cpp.o
main.cpp: CMakeFiles/main.cpp.dir/graph/OrientedGraph.cpp.o
main.cpp: CMakeFiles/main.cpp.dir/Generators/Genetic/GenGenerator.cpp.o
main.cpp: CMakeFiles/main.cpp.dir/circuits/Circuit.cpp.o
main.cpp: CMakeFiles/main.cpp.dir/reliability/Reliability.cpp.o
main.cpp: CMakeFiles/main.cpp.dir/build.make
main.cpp: CMakeFiles/main.cpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable main.cpp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.cpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.cpp.dir/build: main.cpp
.PHONY : CMakeFiles/main.cpp.dir/build

CMakeFiles/main.cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.cpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.cpp.dir/clean

CMakeFiles/main.cpp.dir/depend:
	cd /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source /Users/danilmacin/hse/iot/coursach/MIEM_coursach/Generator/source/CMakeFiles/main.cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.cpp.dir/depend

