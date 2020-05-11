cmake_minimum_required(VERSION 3.4.1)
include_directories(src/main/cpp/libyuv/include)
###加入编辑
add_subdirectory(src/main/cpp/libyuv) ###add_subdirectory(src/main/cpp/libyuv ./build)
###加入所有的.c .cpp到SRC_FILE
aux_source_directory(src/main/cpp SRC_FILE)
add_library(yuvutil
        SHARED
        ${SRC_FILE}
        )
find_library(log-lib log)
target_link_libraries(yuvutil ${log-lib} yuv)


###当前cmakelists.txt所在目录的所有.c .cpp源文件
#AUX_SOURCE_DIRECTORY(. SRC_LIST)
#
##增加其他目录的源文件到集合变量中
#list(APPEND SRC_LIST
#        ../common/1.c
#        ../common/2.c
#        ../common/3.c
#        ../common/4.c
#        ../common/5.c
#        ../common/WriteLog.c
#    )
#
##生成so库，直接使用变量代表那些.c文件集合
#add_library(mylib SHARED ${SRC_LIST})
