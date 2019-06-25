#!/bin/bash -x

git_repo_dir=/tmp/yaml-cpp
build_dir=$git_repo_dir/build

if [ ! -d "$1" ]; then
    echo "Usage: build_yaml_cpp.sh volume_path"
    echo "The given volume path ($1) is not a directory! Don't know where to place artifacts."
    exit 1
fi

volume_path=$1

git clone https://github.com/jbeder/yaml-cpp.git $git_repo_dir

mkdir $build_dir
cd $build_dir || (echo "Can't cd into $build_dir" && exit 1)
cmake ..

make

version=$(grep "Version" < yaml-cpp.pc | cut -d ' ' -f 2)
archive_name=yaml-cpp-$version.tar.gz

tar czf "${volume_path}/${archive_name}" .
