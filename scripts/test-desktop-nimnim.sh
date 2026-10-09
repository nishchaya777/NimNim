#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
TEST_DIR="$(mktemp -d "${TMPDIR:-/tmp}/nimnim-desktop.XXXXXX")"
trap 'rm -rf "$TEST_DIR"' EXIT
swiftc NotchBuddy/Sources/App/DesktopNimNimLogic.swift \
    tests/DesktopNimNimTests.swift -o "$TEST_DIR/desktop-nimnim-tests"
"$TEST_DIR/desktop-nimnim-tests"
