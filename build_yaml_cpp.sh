#!/bin/bash -x

git_repo_dir=/tmp/yaml-cpp
build_dir=$git_repo_dir/build
host_volume=/tmp/build_results

git clone https://github.com/jbeder/yaml-cpp.git $git_repo_dir

mkdir $build_dir
cd $build_dir
cmake ..

make

version=$(cat yaml-cpp.pc | grep "Version" | cut -d ' ' -f 2)
archive_name=yaml-cpp-$version.tar.gz

tar czf $host_volume/$archive_name .
