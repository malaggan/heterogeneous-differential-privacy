#ifdef __has_include
#    if __has_include(<filesystem>)
#        include <filesystem>
         namespace fs = std::filesystem;
#    elif __has_include(<experimental/filesystem>)
#        include <experimental/filesystem>
         namespace fs = std::experimental::filesystem;
#    elif __has_include(<boost/filesystem.hpp>)
#        include <boost/filesystem.hpp>
         namespace fs = boost::filesystem;
#    else
#        error "No filesystem header file found!"
#    endif
#else
#    include <boost/filesystem.hpp>
     namespace fs = boost::filesystem;
#endif
