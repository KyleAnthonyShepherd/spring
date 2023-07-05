#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "cpuid::cpuid" for configuration "MinSizeRel"
set_property(TARGET cpuid::cpuid APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(cpuid::cpuid PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_MINSIZEREL "ASM_MASM;C"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/lib/cpuid.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS cpuid::cpuid )
list(APPEND _IMPORT_CHECK_FILES_FOR_cpuid::cpuid "${_IMPORT_PREFIX}/lib/cpuid.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
