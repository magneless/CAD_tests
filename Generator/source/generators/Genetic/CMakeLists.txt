project(genetic_parameters)

SET(GCC_COVERAGE_COMPILE_FLAGS "-fprofile-arcs -ftest-coverage")
SET(GCC_COVERAGE_LINK_FLAGS    "-lgcov")
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_VERBOSE_MAKEFILE ON)

add_subdirectory(Parents)
add_subdirectory(Mutations)
add_subdirectory(Selections)
add_subdirectory(Recombination)

add_library(GeneticParameters SHARED GeneticParameters.cpp GeneticParameters.h)
target_include_directories(GeneticParameters PUBLIC ${CMAKE_SOURCE_DIR})
