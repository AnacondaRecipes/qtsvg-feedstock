#!/bin/sh

set -e

echo "=== Qt SVG Test Starting ==="

# Set library paths for conda cross-compilation
export LD_LIBRARY_PATH="${PREFIX}/${HOST}/sysroot/usr/lib64:${PREFIX}/${HOST}/sysroot/usr/lib:${LD_LIBRARY_PATH}"

# Configure and build test
cmake -Stest -Bbuild -GNinja

cmake --build build --target all

# Run tests
ctest --test-dir build --output-on-failure
