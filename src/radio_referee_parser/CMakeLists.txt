cmake_minimum_required(VERSION 3.10)
project(radio_referee_parser)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_definitions(-Wall -Werror)

find_package(catkin REQUIRED
        COMPONENTS
        roscpp
        rm_msgs
        std_msgs
        geometry_msgs
        nodelet
        serial
        )

catkin_package(
        INCLUDE_DIRS
        include
        CATKIN_DEPENDS
        roscpp
        rm_msgs
        std_msgs
        geometry_msgs
        nodelet
        serial
)

include_directories(
        include
        ${catkin_INCLUDE_DIRS}
)

add_library(${PROJECT_NAME}_nodelet src/radio_referee_parser.cpp)
target_link_libraries(${PROJECT_NAME}_nodelet ${catkin_LIBRARIES})


install(
        TARGETS ${PROJECT_NAME}_nodelet
        ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
        LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
        RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(FILES radio_referee_parser_plugins.xml
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(

        DIRECTORY include/${PROJECT_NAME}/
        DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
        FILES_MATCHING PATTERN "*.h"
)

install(
        DIRECTORY launch
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
