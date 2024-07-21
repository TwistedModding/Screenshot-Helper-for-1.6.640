if (NOT BINARY_IO_FOUND)
    set(BINARY_IO_INCLUDE_DIRS ${binary_io_SOURCE_DIR}/include)
    set(BINARY_IO_LIBRARIES ${binary_io_BINARY_DIR})
endif()
