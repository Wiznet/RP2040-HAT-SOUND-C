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

# Include any dependencies generated for this target.
include libraries/CMakeFiles/LOOPBACK_FILES.dir/depend.make

# Include the progress variables for this target.
include libraries/CMakeFiles/LOOPBACK_FILES.dir/progress.make

# Include the compile flags for this target's objects.
include libraries/CMakeFiles/LOOPBACK_FILES.dir/flags.make

libraries/CMakeFiles/LOOPBACK_FILES.dir/ioLibrary_Driver/Application/loopback/loopback.c.obj: libraries/CMakeFiles/LOOPBACK_FILES.dir/flags.make
libraries/CMakeFiles/LOOPBACK_FILES.dir/ioLibrary_Driver/Application/loopback/loopback.c.obj: ../libraries/ioLibrary_Driver/Application/loopback/loopback.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libraries/CMakeFiles/LOOPBACK_FILES.dir/ioLibrary_Driver/Application/loopback/loopback.c.obj"
	cd /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build/libraries && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/LOOPBACK_FILES.dir/ioLibrary_Driver/Application/loopback/loopback.c.obj   -c /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/ioLibrary_Driver/Application/loopback/loopback.c

libraries/CMakeFiles/LOOPBACK_FILES.dir/ioLibrary_Driver/Application/loopback/loopback.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LOOPBACK_FILES.dir/ioLibrary_Driver/Application/loopback/loopback.c.i"
	cd /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build/libraries && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/ioLibrary_Driver/Application/loopback/loopback.c > CMakeFiles/LOOPBACK_FILES.dir/ioLibrary_Driver/Application/loopback/loopback.c.i

libraries/CMakeFiles/LOOPBACK_FILES.dir/ioLibrary_Driver/Application/loopback/loopback.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LOOPBACK_FILES.dir/ioLibrary_Driver/Application/loopback/loopback.c.s"
	cd /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build/libraries && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/ioLibrary_Driver/Application/loopback/loopback.c -o CMakeFiles/LOOPBACK_FILES.dir/ioLibrary_Driver/Application/loopback/loopback.c.s

# Object files for target LOOPBACK_FILES
LOOPBACK_FILES_OBJECTS = \
"CMakeFiles/LOOPBACK_FILES.dir/ioLibrary_Driver/Application/loopback/loopback.c.obj"

# External object files for target LOOPBACK_FILES
LOOPBACK_FILES_EXTERNAL_OBJECTS =

libraries/libLOOPBACK_FILES.a: libraries/CMakeFiles/LOOPBACK_FILES.dir/ioLibrary_Driver/Application/loopback/loopback.c.obj
libraries/libLOOPBACK_FILES.a: libraries/CMakeFiles/LOOPBACK_FILES.dir/build.make
libraries/libLOOPBACK_FILES.a: libraries/CMakeFiles/LOOPBACK_FILES.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libLOOPBACK_FILES.a"
	cd /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build/libraries && $(CMAKE_COMMAND) -P CMakeFiles/LOOPBACK_FILES.dir/cmake_clean_target.cmake
	cd /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build/libraries && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LOOPBACK_FILES.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libraries/CMakeFiles/LOOPBACK_FILES.dir/build: libraries/libLOOPBACK_FILES.a

.PHONY : libraries/CMakeFiles/LOOPBACK_FILES.dir/build

libraries/CMakeFiles/LOOPBACK_FILES.dir/clean:
	cd /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build/libraries && $(CMAKE_COMMAND) -P CMakeFiles/LOOPBACK_FILES.dir/cmake_clean.cmake
.PHONY : libraries/CMakeFiles/LOOPBACK_FILES.dir/clean

libraries/CMakeFiles/LOOPBACK_FILES.dir/depend:
	cd /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build/libraries /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/build/libraries/CMakeFiles/LOOPBACK_FILES.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libraries/CMakeFiles/LOOPBACK_FILES.dir/depend

