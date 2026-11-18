#!/usr/bin/env bash

# Compiles the ActionScript 3 sources the ActionScript converter generated with the Apache Royale asjscompc (JS target).
# The source path is this project, the hand written runtime, and the ActionScript sources of the dependencies
# (META-INF/as/src of their jars). This project's sources are written to <output>/src for dependent projects and the
# compiled JavaScript to <output>/js.
# compiler is asjscompc.bat. Git Bash (MSYS) needs cmd //c and Cygwin needs cmd /c; stdin is closed so cmd never waits.
# Arguments: source_dir output_dir object_dir dependency_dir runtime_dir compiler "flags" artifactId fail_on_error

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
object_dir="$(cygpath -u "$3")"
dependency_dir="$(cygpath -u "$4")"
runtime_dir="$(cygpath -u "$5")"
compiler="$(cygpath -w "$6")"
read -r -a compiler_flags <<< "$7"
artifact="$8"
fail_on_error="${9:-true}"

if [ ! -d "$source_dir" ]; then
    echo "No ActionScript sources: $source_dir"
    exit 0
fi

rm -rf "$output_dir" "$object_dir"
mkdir -p "$output_dir/src" "$output_dir/js" "$object_dir"
cp -R "$source_dir/." "$output_dir/src/"

source_path="$(cygpath -w "$source_dir"),$(cygpath -w "$runtime_dir")"
if [ -d "$dependency_dir/src" ]; then
    source_path="$source_path,$(cygpath -w "$dependency_dir/src")"
fi

cmd_flag="/c"
if [ "$(uname -o)" = "Msys" ]; then
    cmd_flag="//c"
fi

echo "ActionScript sources: $(find "$source_dir" -name '*.as' | wc -l)"
output="$(cmd "$cmd_flag" "$compiler" "-source-path=$source_path" "-include-sources=$(cygpath -w "$source_dir")" "-js-output=$(cygpath -w "$object_dir/js")" "${compiler_flags[@]}" < /dev/null 2>&1)"
status=$?
echo "$output" | grep -v -E 'WARNING: (A terminally|sun.misc|Please consider)|^-|^args:|configname'
# Like Java, a dependency is not checked again here: its own optional dependencies (TsUtil for StringValidationUtil) are
# not transitive so they are missing. Only errors in this project's sources and the runtime fail the build.
if [ "$status" != "0" ]; then
    project_errors="$(echo "$output" | grep -E '\.as\([0-9]+\)' | grep -v -F "$(cygpath -w "$dependency_dir")")"
    if [ -z "$project_errors" ] && echo "$output" | grep -q -E '\.as\([0-9]+\)'; then
        echo "ActionScript dependency errors only: $artifact"
        mkdir -p "$object_dir/js"
        status=0
    fi
fi
if [ "$status" = "0" ] && [ -d "$object_dir/js" ]; then
    cp -R "$object_dir/js/." "$output_dir/js/"
    echo "ActionScript compiled: $artifact"
    exit 0
fi
echo "ActionScript build failed: $artifact" >&2
if [ "$fail_on_error" = "true" ]; then
    exit 1
fi
exit 0
