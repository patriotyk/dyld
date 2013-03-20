project(dyld)

cmake_minimum_required(VERSION 2.4.0)


set(dyld_SRCS
  src/dyld_debug.c
  src/dyldExceptions.c
  src/dyldLibSystemGlue.c
  src/glue.c
  src/threadLocalVariables.c
  src/dyldAPIs.cpp
#   dyldAPIsInLibSystem.cpp
  src/dyld.cpp
  src/dyld_gdb.cpp
  src/dyldInitialization.cpp
  src/dyldLock.cpp
  src/dyldNew.cpp
  src/ImageLoader.cpp
  src/ImageLoaderMachOClassic.cpp
  src/ImageLoaderMachOCompressed.cpp
  src/ImageLoaderMachO.cpp


)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fblocks")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fblocks -std=c99")

add_definitions(-D__ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__=1080  -D__APPLE__ -D__APPLE_CC__ -D__APPLE_CPP__ -D__BLOCKS__)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include/mach-o)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/launch-cache)


add_library(dyld SHARED ${dyld_SRCS})

