set(PACKAGE_VERSION "14.1.7")

# LLVM is API-compatible only with matching major.minor versions
# and patch versions not less than that requested.
if("14.1" VERSION_EQUAL
    "${PACKAGE_FIND_VERSION_MAJOR}.${PACKAGE_FIND_VERSION_MINOR}"
   AND NOT "7" VERSION_LESS "${PACKAGE_FIND_VERSION_PATCH}")
  set(PACKAGE_VERSION_COMPATIBLE 1)
  if("7" VERSION_EQUAL
      "${PACKAGE_FIND_VERSION_PATCH}")
    set(PACKAGE_VERSION_EXACT 1)
  endif()
endif()
