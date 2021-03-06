# - Find XIOT
# Find the XIOT includes and library
#
#  XIOT_INCLUDE_DIR - Where to find XIOT include sub-directory.
#  XIOT_LIBRARIES   - List of libraries when using XIOT.
#  XIOT_FOUND       - True if XIOT found.


IF (XIOT_INCLUDE_DIR)
  # Already in cache, be silent
  SET(XIOT_FIND_QUIETLY TRUE)
ENDIF (XIOT_INCLUDE_DIR)

FIND_PATH(XIOT_INCLUDE_DIR X3DWriter.h)

SET(XIOT_NAMES xiot)
FIND_LIBRARY(XIOT_LIBRARY NAMES ${XIOT_NAMES})

# Handle the QUIETLY and REQUIRED arguments and set XIOT_FOUND to
# TRUE if all listed variables are TRUE.
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(
  XIOT DEFAULT_MSG
  XIOT_LIBRARY XIOT_INCLUDE_DIR
)

IF(XIOT_FOUND)
  SET( XIOT_LIBRARIES ${XIOT_LIBRARY} )
ELSE(XIOT_FOUND)
  SET( XIOT_LIBRARIES )
ENDIF(XIOT_FOUND)

MARK_AS_ADVANCED( XIOT_LIBRARY XIOT_INCLUDE_DIR )
