add_executable(analyse ${CMAKE_CURRENT_SOURCE_DIR}/analyse.cc
        ${CMAKE_CURRENT_SOURCE_DIR}/conf.hh
        ${CMAKE_CURRENT_SOURCE_DIR}/stat.hh)

set_property(TARGET analyse PROPERTY CXX_STANDARD 17)
set_property(TARGET analyse PROPERTY CXX_STANDARD_REQUIRED ON)

target_compile_options(analyse PUBLIC -Wextra -pedantic -Wall -Wold-style-cast -march=native)

target_link_libraries(analyse ${CONAN_LIBS} pthread dl)
