#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
TEST_DIR="$(mktemp -d "${TMPDIR:-/tmp}/nimnim-wardrobe.XXXXXX")"
trap 'rm -rf "$TEST_DIR"' EXIT
swiftc NotchBuddy/Sources/App/NimNimWardrobe.swift \
    tests/NimNimWardrobeTests.swift -o "$TEST_DIR/wardrobe-tests"
"$TEST_DIR/wardrobe-tests"
