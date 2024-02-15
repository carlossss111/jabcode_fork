#!/bin/bash
# Daniel 2024 for use with my research project

# Paths
readonly this_project="/home/daniel/Repos/jabcode_fork"
readonly other_project="/home/daniel/Repos/dissertation/hybrid_arcade"

# Compile
set -x
make

# Migrate
echo "Migrate? y/n"
read migrate_or_no
if [ "$migrate_or_no" == 'y' ]; then
    cp "$this_project/src/jabcode/build/libjabcode.a" "$other_project/src/main/c/clib/libjabcode.a" || exit 1
    cp "$this_project/src/jabcode/include/jabcode.h" "$other_project/src/main/c/cinclude/jabcode.h" || exit 1
fi
exit 0