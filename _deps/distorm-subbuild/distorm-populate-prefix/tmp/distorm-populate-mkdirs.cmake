# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/danielsirkia/project/funchook/_deps/distorm-src")
  file(MAKE_DIRECTORY "/Users/danielsirkia/project/funchook/_deps/distorm-src")
endif()
file(MAKE_DIRECTORY
  "/Users/danielsirkia/project/funchook/_deps/distorm-build"
  "/Users/danielsirkia/project/funchook/_deps/distorm-subbuild/distorm-populate-prefix"
  "/Users/danielsirkia/project/funchook/_deps/distorm-subbuild/distorm-populate-prefix/tmp"
  "/Users/danielsirkia/project/funchook/_deps/distorm-subbuild/distorm-populate-prefix/src/distorm-populate-stamp"
  "/Users/danielsirkia/project/funchook/_deps/distorm-subbuild/distorm-populate-prefix/src"
  "/Users/danielsirkia/project/funchook/_deps/distorm-subbuild/distorm-populate-prefix/src/distorm-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/danielsirkia/project/funchook/_deps/distorm-subbuild/distorm-populate-prefix/src/distorm-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/danielsirkia/project/funchook/_deps/distorm-subbuild/distorm-populate-prefix/src/distorm-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
