set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}  -fvisibility=hidden -frtti -fvisibility-inlines-hidden")

add_executable(hdp ${CMAKE_CURRENT_SOURCE_DIR}/abstract_user.hh
        ${CMAKE_CURRENT_SOURCE_DIR}/args.cc
        ${CMAKE_CURRENT_SOURCE_DIR}/args.hh
        ${CMAKE_CURRENT_SOURCE_DIR}/conf.hh
        ${CMAKE_CURRENT_SOURCE_DIR}/cyclon.cc
        ${CMAKE_CURRENT_SOURCE_DIR}/dataset.cc
        ${CMAKE_CURRENT_SOURCE_DIR}/dataset.hh
        ${CMAKE_CURRENT_SOURCE_DIR}/filesystem.hh
        ${CMAKE_CURRENT_SOURCE_DIR}/hdp.cc
        ${CMAKE_CURRENT_SOURCE_DIR}/heap.tcc
        ${CMAKE_CURRENT_SOURCE_DIR}/laplace.cc
        ${CMAKE_CURRENT_SOURCE_DIR}/laplace.hh
        ${CMAKE_CURRENT_SOURCE_DIR}/log.cc
        ${CMAKE_CURRENT_SOURCE_DIR}/log.hh
        ${CMAKE_CURRENT_SOURCE_DIR}/option.hh
        ${CMAKE_CURRENT_SOURCE_DIR}/priority_queue.hh
        ${CMAKE_CURRENT_SOURCE_DIR}/privacy.cc
        ${CMAKE_CURRENT_SOURCE_DIR}/privacy.hh
        ${CMAKE_CURRENT_SOURCE_DIR}/random.cc
        ${CMAKE_CURRENT_SOURCE_DIR}/random.hh
        ${CMAKE_CURRENT_SOURCE_DIR}/random_sample.tcc
        ${CMAKE_CURRENT_SOURCE_DIR}/ventry.hh
        ${CMAKE_CURRENT_SOURCE_DIR}/vicinity-print-view.cc
        ${CMAKE_CURRENT_SOURCE_DIR}/vicinity.cc
        ${CMAKE_CURRENT_SOURCE_DIR}/view.cc
        ${CMAKE_CURRENT_SOURCE_DIR}/view.hh)

set_property(TARGET hdp PROPERTY CXX_STANDARD 17)
set_property(TARGET hdp PROPERTY CXX_STANDARD_REQUIRED ON)

target_compile_options(hdp PUBLIC -Wextra -pedantic -Wall -Wold-style-cast -march=native)

target_link_libraries(hdp ${CONAN_LIBS})
