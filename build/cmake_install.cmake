# Install script for directory: C:/Users/p.raimbaud/Documents/SDK

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files/OptiX-Samples")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/p.raimbaud/Documents/build/optixBuffersOfBuffers/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixCallablePrograms/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixCompressedTexture/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixConsole/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixDenoiser/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixDeviceQuery/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixDynamicGeometry/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixGeometryTriangles/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixHello/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixInstancing/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixMDLDisplacement/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixMDLExpressions/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixMDLSphere/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixMeshViewer/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixMotionBlur/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixParticles/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixPathTracer/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixPrimitiveIndexOffsets/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixRaycasting/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixSelector/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixSphere/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixSpherePP/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixSSIMPredictor/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixTextureSampler/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixTutorial/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/optixWhitted/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/primeInstancing/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/primeMasking/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/primeMultiBuffering/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/primeMultiGpu/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/primeSimple/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/primeSimplePP/cmake_install.cmake")
  include("C:/Users/p.raimbaud/Documents/build/sutil/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/p.raimbaud/Documents/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
