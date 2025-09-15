#!/bin/sh

set -e

echo "=== Qt SVG Test Starting ==="

# Configure and build test
cmake -Stest -Bbuild -GNinja

cmake --build build --target all

# Run tests
ctest --test-dir build --output-on-failure
