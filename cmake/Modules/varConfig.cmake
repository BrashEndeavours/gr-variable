INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_VAR var)

FIND_PATH(
    VAR_INCLUDE_DIRS
    NAMES var/api.h
    HINTS $ENV{VAR_DIR}/include
        ${PC_VAR_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    VAR_LIBRARIES
    NAMES gnuradio-var
    HINTS $ENV{VAR_DIR}/lib
        ${PC_VAR_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(VAR DEFAULT_MSG VAR_LIBRARIES VAR_INCLUDE_DIRS)
MARK_AS_ADVANCED(VAR_LIBRARIES VAR_INCLUDE_DIRS)

