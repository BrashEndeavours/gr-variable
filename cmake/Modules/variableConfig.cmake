INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_VARIABLE variable)

FIND_PATH(
    VARIABLE_INCLUDE_DIRS
    NAMES variable/api.h
    HINTS $ENV{VARIABLE_DIR}/include
        ${PC_VARIABLE_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    VARIABLE_LIBRARIES
    NAMES gnuradio-variable
    HINTS $ENV{VARIABLE_DIR}/lib
        ${PC_VARIABLE_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(VARIABLE DEFAULT_MSG VARIABLE_LIBRARIES VARIABLE_INCLUDE_DIRS)
MARK_AS_ADVANCED(VARIABLE_LIBRARIES VARIABLE_INCLUDE_DIRS)

