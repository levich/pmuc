# - Find OpenCOLLADASW
# Find the OpenCOLLADA Stream Writer includes and library
#
#  OPENCOLLADASW_INCLUDE_DIR - Where to find OpenCOLLADASW include sub-directory.
#  OPENCOLLADASW_LIBRARIES   - List of libraries when using OCSW.
#  OPENCOLLADASW_FOUND       - True if OpenCOLLADA SW found.


IF (OPENCOLLADASW_INCLUDE_DIR)
  # Already in cache, be silent
  SET(OPENCOLLADASW_FIND_QUIETLY TRUE)
ENDIF (OPENCOLLADASW_INCLUDE_DIR)

FIND_PATH(OPENCOLLADASW_INCLUDE_DIR COLLADASWStreamWriter.h)
FIND_PATH(OPENCOLLADABU_INCLUDE_DIR COLLADABUPlatform.h)

SET(OPENCOLLADASW_NAMES OpenCOLLADAStreamWriter)
FIND_LIBRARY(OPENCOLLADASW_LIBRARY NAMES ${OPENCOLLADASW_NAMES})
SET(OPENCOLLADABU_NAMES OpenCOLLADABaseUtils)
FIND_LIBRARY(OPENCOLLADABU_LIBRARY NAMES ${OPENCOLLADABU_NAMES})
SET(OPENCOLLADA_PCRE_NAMES pcre)
FIND_LIBRARY(OPENCOLLADA_PCRE_LIBRARY NAMES ${OPENCOLLADA_PCRE_NAMES})
SET(OPENCOLLADA_BUFFER_NAMES buffer)
FIND_LIBRARY(OPENCOLLADA_BUFFER_LIBRARY NAMES ${OPENCOLLADA_BUFFER_NAMES})
SET(OPENCOLLADA_FTOA_NAMES ftoa)
FIND_LIBRARY(OPENCOLLADA_FTOA_LIBRARY NAMES ${OPENCOLLADA_FTOA_NAMES})
SET(OPENCOLLADA_UTF_NAMES UTF)
FIND_LIBRARY(OPENCOLLADA_UTF_LIBRARY NAMES ${OPENCOLLADA_UTF_NAMES})

# Handle the QUIETLY and REQUIRED arguments and set OPENCOLLADASW_FOUND to
# TRUE if all listed variables are TRUE.
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(
  OPENCOLLADASW DEFAULT_MSG
  OPENCOLLADASW_LIBRARY OPENCOLLADABU_LIBRARY OPENCOLLADA_PCRE_LIBRARY OPENCOLLADA_BUFFER_LIBRARY OPENCOLLADA_FTOA_LIBRARY OPENCOLLADA_UTF_LIBRARY OPENCOLLADASW_INCLUDE_DIR OPENCOLLADABU_INCLUDE_DIR
)

IF(OPENCOLLADASW_FOUND)
  SET( OPENCOLLADASW_LIBRARIES ${OPENCOLLADASW_LIBRARY} ${OPENCOLLADABU_LIBRARY} ${OPENCOLLADA_PCRE_LIBRARY} ${OPENCOLLADA_BUFFER_LIBRARY} ${OPENCOLLADA_FTOA_LIBRARY} ${OPENCOLLADA_UTF_LIBRARY} )
ELSE(OPENCOLLADASW_FOUND)
  SET( OPENCOLLADASW_LIBRARIES )
ENDIF(OPENCOLLADASW_FOUND)

MARK_AS_ADVANCED( OPENCOLLADASW_LIBRARY OPENCOLLADABU_LIBRARY OPENCOLLADA_PCRE_LIBRARY OPENCOLLADA_BUFFER_LIBRARY OPENCOLLADA_FTOA_LIBRARY OPENCOLLADA_UTF_LIBRARY OPENCOLLADASW_INCLUDE_DIR OPENCOLLADABU_INCLUDE_DIR )
