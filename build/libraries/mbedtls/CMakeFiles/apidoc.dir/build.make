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
CMAKE_SOURCE_DIR = /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build

# Utility rule file for apidoc.

# Include the progress variables for this target.
include libraries/mbedtls/CMakeFiles/apidoc.dir/progress.make

libraries/mbedtls/CMakeFiles/apidoc:
	cd /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/doxygen && doxygen mbedtls.doxyfile

apidoc: libraries/mbedtls/CMakeFiles/apidoc
apidoc: libraries/mbedtls/CMakeFiles/apidoc.dir/build.make

.PHONY : apidoc

# Rule to build all files generated by this target.
libraries/mbedtls/CMakeFiles/apidoc.dir/build: apidoc

.PHONY : libraries/mbedtls/CMakeFiles/apidoc.dir/build

libraries/mbedtls/CMakeFiles/apidoc.dir/clean:
	cd /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build/libraries/mbedtls && $(CMAKE_COMMAND) -P CMakeFiles/apidoc.dir/cmake_clean.cmake
.PHONY : libraries/mbedtls/CMakeFiles/apidoc.dir/clean

libraries/mbedtls/CMakeFiles/apidoc.dir/depend:
	cd /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build/libraries/mbedtls /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build/libraries/mbedtls/CMakeFiles/apidoc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libraries/mbedtls/CMakeFiles/apidoc.dir/depend

