include(FetchContent)
if(NOT DEFINED FETCHCONTENT_BASE_DIR)
    set(FETCHCONTENT_BASE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/build/dependencies)
endif()
macro(fetch_content NAME REPOSITORY TAG)
    FetchContent_Declare(${NAME}
                            GIT_REPOSITORY ${REPOSITORY}
                            GIT_TAG ${TAG}
                            OVERRIDE_FIND_PACKAGE)
    FetchContent_GetProperties(${NAME})
    if (NOT ${NAME}_POPULATED)
        FetchContent_Populate(${NAME})
    endif()
    add_subdirectory(${${NAME}_SOURCE_DIR} ${${NAME}_BINARY_DIR})
endmacro()
