#
# Find dependency
#
#  LZ4_INCLUDE_DIR - where to find glog/logging.h, etc.
#  LZ4_LIBRARY     - List of libraries when using libglog.
#  LZ4_FOUND       - True if libglog found.


IF (LZ4_INCLUDE_DIR)
  # Already in cache, be silent
  SET(LZ4_FIND_QUIETLY TRUE)
ENDIF ()

FIND_PATH(LZ4_INCLUDE_DIR LZ4.h
	HINTS "${ThirdPartyRootDir}/lz4/include")

FIND_LIBRARY(LZ4_LIBRARY lz4 liblz4
	HINTS "${ThirdPartyRootDir}/lz4/${LIB_POST_FIX}")
	
# handle the QUIETLY and REQUIRED arguments and set LZ4_FOUND to TRUE if
# all listed variables are TRUE
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LZ4 DEFAULT_MSG LZ4_LIBRARY LZ4_INCLUDE_DIR)

MARK_AS_ADVANCED(LZ4_LIBRARY LZ4_INCLUDE_DIR)
