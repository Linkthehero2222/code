cmake_minimum_required(VERSION 3.19.4)
project(MeatWorms VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 20)

add_subdirectory(SDL2)
add_subdirectory(glm)

find_package(Vulkan REQUIRED)

include_directories(SDL2/include)
include_directories(glm/glm)

file(GLOB SOURCES CONFIGURE_DEPENDS
    *.cpp
    *.hpp
)

add_executable(MeatWorms ${SOURCES})

target_link_libraries(MeatWorms mingw32 SDL2main SDL2-static glm Vulkan::Vulkan)