cmake_minimum_required(VERSION 3.17.3)

set(CMAKE_CXX_COMPILER /usr/local/bin/g++-9)
set(CMAKE_C_COMPILER /usr/local/bin/gcc-9)

project(HeterogeneousDifferentialPrivacy)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_BUILD_TYPE RelWithDebInfo)
set(CONAN_SYSTEM_INCLUDES ON)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}  -fvisibility=hidden -frtti -fvisibility-inlines-hidden")

add_executable(hdp ${PROJECT_SOURCE_DIR}/abstract_user.hh
        ${PROJECT_SOURCE_DIR}/args.cc
        ${PROJECT_SOURCE_DIR}/args.hh
        ${PROJECT_SOURCE_DIR}/conf.hh
        ${PROJECT_SOURCE_DIR}/cyclon.cc
        ${PROJECT_SOURCE_DIR}/dataset.cc
        ${PROJECT_SOURCE_DIR}/dataset.hh
        ${PROJECT_SOURCE_DIR}/filesystem.hh
        ${PROJECT_SOURCE_DIR}/hdp.cc
        ${PROJECT_SOURCE_DIR}/heap.tcc
        ${PROJECT_SOURCE_DIR}/laplace.cc
        ${PROJECT_SOURCE_DIR}/laplace.hh
        ${PROJECT_SOURCE_DIR}/log.cc
        ${PROJECT_SOURCE_DIR}/log.hh
        ${PROJECT_SOURCE_DIR}/option.hh
        ${PROJECT_SOURCE_DIR}/priority_queue.hh
        ${PROJECT_SOURCE_DIR}/privacy.cc
        ${PROJECT_SOURCE_DIR}/privacy.hh
        ${PROJECT_SOURCE_DIR}/random.cc
        ${PROJECT_SOURCE_DIR}/random.hh
        ${PROJECT_SOURCE_DIR}/random_sample.tcc
        ${PROJECT_SOURCE_DIR}/ventry.hh
        ${PROJECT_SOURCE_DIR}/vicinity-print-view.cc
        ${PROJECT_SOURCE_DIR}/vicinity.cc
        ${PROJECT_SOURCE_DIR}/view.cc
        ${PROJECT_SOURCE_DIR}/view.hh)

set_property(TARGET hdp PROPERTY CXX_STANDARD 17)
set_property(TARGET hdp PROPERTY CXX_STANDARD_REQUIRED ON)
# set_target_properties(hdp PROPERTIES CXX_VISIBILITY_PRESET hidden)

target_compile_options(hdp PUBLIC -Wextra -pedantic -Wall -Wold-style-cast -Wc++14-compat -march=native)

target_link_libraries(hdp ${CONAN_LIBS})
