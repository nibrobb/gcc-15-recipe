#!/usr/bin/env bash

set -o pipefail
set -xeu

# TODO: Look for dependencies, if debian, install from apt

CONFIG_ARGS=(
    --with-pkgversion='Custom build GCC 15.1.0'
    --enable-languages=c,c++,go,fortran,objc,obj-c++,m2,lto,cobol
    --with-gcc-major-version-only
    --program-suffix=-15
    --enable-threads=posix
    --enable-c99
    --enable-long-long
    --with-gnu-ld
    --enable-shared
    --enable-libstdcxx-pch
    --with-arch-32=i686
    --with-abi=m64
    --build=x86_64-linux-gnu
    --host=x86_64-linux-gnu
    --target=x86_64-linux-gnu
)

objdir="objdir"

mkdir -p "$objdir"
cd "$objdir"

# Run the configure
../gcc/configure "${CONFIG_ARGS[@]}"

