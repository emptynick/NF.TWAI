#
# Copyright (c) .NET Foundation and Contributors
# See LICENSE file in the project root for full license information.
#

########################################################################################
# make sure that a valid path is set bellow                                            #
# this is an Interop module so this file should be placed in the CMakes module folder  #
# usually CMake\Modules                                                                #
########################################################################################

# native code directory
set(BASE_PATH_FOR_THIS_MODULE ${PROJECT_SOURCE_DIR}/InteropAssemblies/NF.TWAI)


# set include directories
list(APPEND NF.TWAI_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/CLR/Core)
list(APPEND NF.TWAI_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/CLR/Include)
list(APPEND NF.TWAI_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/HAL/Include)
list(APPEND NF.TWAI_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/PAL/Include)
list(APPEND NF.TWAI_INCLUDE_DIRS ${BASE_PATH_FOR_THIS_MODULE})


# source files
set(NF.TWAI_SRCS

    NF_TWAI.cpp


    NF_TWAI_NF_TWAI_TWAI_mshl.cpp
    NF_TWAI_NF_TWAI_TWAI.cpp

)

foreach(SRC_FILE ${NF.TWAI_SRCS})

    set(NF.TWAI_SRC_FILE SRC_FILE-NOTFOUND)

    find_file(NF.TWAI_SRC_FILE ${SRC_FILE}
        PATHS
	        ${BASE_PATH_FOR_THIS_MODULE}
	        ${TARGET_BASE_LOCATION}
            ${PROJECT_SOURCE_DIR}/src/NF.TWAI

	    CMAKE_FIND_ROOT_PATH_BOTH
    )

    if (BUILD_VERBOSE)
        message("${SRC_FILE} >> ${NF.TWAI_SRC_FILE}")
    endif()

    list(APPEND NF.TWAI_SOURCES ${NF.TWAI_SRC_FILE})

endforeach()

include(FindPackageHandleStandardArgs)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(NF.TWAI DEFAULT_MSG NF.TWAI_INCLUDE_DIRS NF.TWAI_SOURCES)
