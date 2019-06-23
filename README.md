# A Jenkins pipeline exercise for AiMotive

# Prerequisites
- Jenkins 2.x
- Jenkins plugin (installed from Jenkins' plugin UI):
    - Pipeline
    - Git

# Build scripts
Note: the project's own build system uses `g++-4.7` to compile but that
package is no longer available in the [`ubuntu-toolchain-r/test`](ubuntu-toolchain-r) repo
so we'll use the latest `g++` for ubuntu 18.04.

[ubuntu-toolchain-r]: https://launchpad.net/~ubuntu-toolchain-r/+archive/ubuntu/test
