# Install script for directory: T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/libcpuid/libcpuid

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Spring")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/libcpuid/libcpuid/Debug/cpuid.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/libcpuid/libcpuid/Release/cpuid.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/libcpuid/libcpuid/MinSizeRel/cpuid.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/libcpuid/libcpuid/RelWithDebInfo/cpuid.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcpuid" TYPE FILE FILES
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/libcpuid/libcpuid/libcpuid.h"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/libcpuid/libcpuid/libcpuid_types.h"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/libcpuid/libcpuid/libcpuid_constants.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/cpuid/cpuidTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/cpuid/cpuidTargets.cmake"
         "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/libcpuid/libcpuid/CMakeFiles/Export/lib/cmake/cpuid/cpuidTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/cpuid/cpuidTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/cpuid/cpuidTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/cpuid" TYPE FILE FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/libcpuid/libcpuid/CMakeFiles/Export/lib/cmake/cpuid/cpuidTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/cpuid" TYPE FILE FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/libcpuid/libcpuid/CMakeFiles/Export/lib/cmake/cpuid/cpuidTargets-debug.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/cpuid" TYPE FILE FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/libcpuid/libcpuid/CMakeFiles/Export/lib/cmake/cpuid/cpuidTargets-minsizerel.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/cpuid" TYPE FILE FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/libcpuid/libcpuid/CMakeFiles/Export/lib/cmake/cpuid/cpuidTargets-relwithdebinfo.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/cpuid" TYPE FILE FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/libcpuid/libcpuid/CMakeFiles/Export/lib/cmake/cpuid/cpuidTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/cpuid" TYPE FILE FILES
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/libcpuid/libcpuid/generated/cpuidConfig.cmake"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/libcpuid/libcpuid/generated/cpuidConfigVersion.cmake"
    )
endif()

