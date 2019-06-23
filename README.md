# A Jenkins pipeline exercise for AiMotive

# Prerequisites
- Jenkins 2.x
- Jenkins plugin (installed from Jenkins' plugin UI):
    - Pipeline
    - Git

# Overview
This project includes a Jenkins pipeline that creates a docker image
for building the [yaml-cpp](yaml-cpp-github) project from source.
`install_deps.sh` is used for setting up the build environment in the docker image,
`build_yaml_cpp.sh` implements the build and packaging process.

Note: `yaml-cpp`'s own build system uses `g++-4.7` to compile but that
package is no longer available in the [`ubuntu-toolchain-r/test`](ubuntu-toolchain-r) repo
that they referenced so we'll use the latest version of `g++` for ubuntu 18.04.

[yaml-cpp-github]: https://github.com/jbeder/yaml-cpp
[ubuntu-toolchain-r]: https://launchpad.net/~ubuntu-toolchain-r/+archive/ubuntu/test
