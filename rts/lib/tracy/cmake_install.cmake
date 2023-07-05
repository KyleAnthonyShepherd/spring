# Install script for directory: T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/tracy/Debug/TracyClient.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/tracy/Release/TracyClient.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/tracy/MinSizeRel/TracyClient.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/tracy/RelWithDebInfo/TracyClient.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tracy" TYPE FILE FILES
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/tracy/TracyC.h"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/tracy/Tracy.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/tracy/TracyD3D11.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/tracy/TracyD3D12.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/tracy/TracyLua.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/tracy/TracyOpenCL.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/tracy/TracyOpenGL.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/tracy/TracyVulkan.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/client" TYPE FILE FILES
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/client/tracy_concurrentqueue.h"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/client/tracy_rpmalloc.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/client/tracy_SPSCQueue.h"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/client/TracyArmCpuTable.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/client/TracyCallstack.h"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/client/TracyCallstack.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/client/TracyDebug.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/client/TracyDxt1.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/client/TracyFastVector.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/client/TracyLock.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/client/TracyProfiler.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/client/TracyRingBuffer.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/client/TracyScoped.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/client/TracyStringHelpers.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/client/TracySysTime.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/client/TracySysTrace.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/client/TracyThread.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/common" TYPE FILE FILES
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/common/tracy_lz4.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/common/tracy_lz4hc.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/common/TracyAlign.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/common/TracyAlloc.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/common/TracyApi.h"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/common/TracyColor.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/common/TracyForceInline.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/common/TracyMutex.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/common/TracyProtocol.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/common/TracyQueue.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/common/TracySocket.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/common/TracyStackFrames.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/common/TracySystem.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/common/TracyUwp.hpp"
    "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/games/spring/rts/lib/tracy/public/common/TracyYield.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/Tracy/TracyConfig.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/Tracy/TracyConfig.cmake"
         "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/tracy/CMakeFiles/Export/share/Tracy/TracyConfig.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/Tracy/TracyConfig-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/Tracy/TracyConfig.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Tracy" TYPE FILE FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/tracy/CMakeFiles/Export/share/Tracy/TracyConfig.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Tracy" TYPE FILE FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/tracy/CMakeFiles/Export/share/Tracy/TracyConfig-debug.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Tracy" TYPE FILE FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/tracy/CMakeFiles/Export/share/Tracy/TracyConfig-minsizerel.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Tracy" TYPE FILE FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/tracy/CMakeFiles/Export/share/Tracy/TracyConfig-relwithdebinfo.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Tracy" TYPE FILE FILES "T:/Kyle_Shepherd/games/Beyond-All-Reason/data/engine/dev_engine/rts/lib/tracy/CMakeFiles/Export/share/Tracy/TracyConfig-release.cmake")
  endif()
endif()

