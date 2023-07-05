#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "cpuid::cpuid" for configuration "Debug"
set_property(TARGET cpuid::cpuid APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(cpuid::cpuid PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "ASM_MASM;C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/cpuid.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS cpuid::cpuid )
list(APPEND _IMPORT_CHECK_FILES_FOR_cpuid::cpuid "${_IMPORT_PREFIX}/lib/cpuid.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
