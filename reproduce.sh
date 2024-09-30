#!/bin/bash

echo 'Installing cargo-insta v1.39.0'
hide_output=$(cargo install cargo-insta@1.39.0 2>&1 >/dev/null)
echo 'output on v1.39.0'
cargo insta pending-snapshots --workspace-root tests

echo $'\n===\n'

echo 'Installing cargo-insta v1.40.0'
hide_output=$(cargo install cargo-insta@1.40.0 2>&1 >/dev/null)
echo 'output on v1.40.0'
cargo insta pending-snapshots --workspace-root tests
