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

# Utility rule file for lib.

# Include the progress variables for this target.
include libraries/mbedtls/library/CMakeFiles/lib.dir/progress.make

libraries/mbedtls/library/CMakeFiles/lib: libraries/mbedtls/library/libmbedcrypto.a
libraries/mbedtls/library/CMakeFiles/lib: libraries/mbedtls/library/libmbedx509.a
libraries/mbedtls/library/CMakeFiles/lib: libraries/mbedtls/library/libmbedtls.a


lib: libraries/mbedtls/library/CMakeFiles/lib
lib: libraries/mbedtls/library/CMakeFiles/lib.dir/build.make

.PHONY : lib

# Rule to build all files generated by this target.
libraries/mbedtls/library/CMakeFiles/lib.dir/build: lib

.PHONY : libraries/mbedtls/library/CMakeFiles/lib.dir/build

libraries/mbedtls/library/CMakeFiles/lib.dir/clean:
	cd /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build/libraries/mbedtls/library && $(CMAKE_COMMAND) -P CMakeFiles/lib.dir/cmake_clean.cmake
.PHONY : libraries/mbedtls/library/CMakeFiles/lib.dir/clean

libraries/mbedtls/library/CMakeFiles/lib.dir/depend:
	cd /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/library /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build/libraries/mbedtls/library /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build/libraries/mbedtls/library/CMakeFiles/lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libraries/mbedtls/library/CMakeFiles/lib.dir/depend

