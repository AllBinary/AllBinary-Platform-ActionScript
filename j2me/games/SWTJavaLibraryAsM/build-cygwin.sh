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
mkdir -p "$output_dir/src" "$output_dir/js" "$output_dir/modules/$artifact" "$object_dir"
cp -R "$source_dir/." "$output_dir/src/"
# The sources again under modules/<artifactId>: all dependency jars are unpacked into one folder, so a class two modules
# have (a platform variant and its No*/Null*/None* stub) is only told apart there
cp -R "$source_dir/." "$output_dir/modules/$artifact/"

# A deep project folder plus a deep package can pass the Windows 260 character path limit, so the compile reads a short
# temporary tree: runtime/, dependencies/ and project/
short_tree="$(mktemp -d /tmp/asXXXXXX)"
trap 'rm -rf "$short_tree"' EXIT
mkdir -p "$short_tree/runtime" "$short_tree/dependencies" "$short_tree/project"
cp -R "$runtime_dir/." "$short_tree/runtime/"
if [ -d "$dependency_dir/src" ]; then
    cp -R "$dependency_dir/src/." "$short_tree/dependencies/"
fi
# A file more dependency modules have (one class of a platform variant and its stub): the definition of a module that is
# not a No*/Null*/None* stub, else the one with more members (a superset satisfies code compiled against the smaller one).
# Jars built before modules/ existed only have src/, which stays as unpacked.
if [ -d "$dependency_dir/modules" ]; then
    perl -e '
        use strict;
        my ($modules, $target) = @ARGV;
        my %candidates;
        opendir(my $dir, $modules) or exit 0;
        my @names = sort grep { !/^\./ && -d "$modules/$_" } readdir($dir);
        closedir($dir);
        for my $module (@names) {
            my @stack = ("");
            while (@stack) {
                my $relative = shift @stack;
                my $path = $relative eq "" ? "$modules/$module" : "$modules/$module/$relative";
                if (-d $path) {
                    opendir(my $sub, $path) or next;
                    push @stack, map { $relative eq "" ? $_ : "$relative/$_" } grep { !/^\./ } readdir($sub);
                    closedir($sub);
                } elsif ($relative =~ /\.as$/) {
                    push @{$candidates{$relative}}, $module;
                }
            }
        }
        sub stub { return $_[0] =~ /^(No|Null|None)[A-Z]/ ? 1 : 0; }
        sub members {
            my ($file) = @_;
            open(my $in, "<", $file) or return 0;
            my $count = 0;
            while (my $line = <$in>) { $count++ if $line =~ /\bfunction\s+\w/; }
            close($in);
            return $count;
        }
        for my $relative (sort keys %candidates) {
            my @list = @{$candidates{$relative}};
            my $best = $list[0];
            if (@list > 1) {
                for my $module (@list[1..$#list]) {
                    my ($a, $b) = (stub($best), stub($module));
                    if ($a != $b) {
                        $best = $module if $a;
                    } elsif (members("$modules/$module/$relative") > members("$modules/$best/$relative")) {
                        $best = $module;
                    }
                }
                my $class = $relative;
                $class =~ s/\.as$//;
                $class =~ s#.*/##;
                print "ActionScript duplicate class $class: using $best (of @list)\n";
            }
            my $destination = "$target/$relative";
            (my $folder = $destination) =~ s#/[^/]*$##;
            system("mkdir", "-p", $folder);
            system("cp", "$modules/$best/$relative", $destination);
        }
    ' "$dependency_dir/modules" "$short_tree/dependencies"
fi
cp -R "$source_dir/." "$short_tree/project/"
# A dependency file that this project also has (the same package path) is this project's
(cd "$short_tree/project" && find . -type f -name '*.as') | while IFS= read -r file; do
    rm -f "$short_tree/dependencies/$file"
done
source_dir="$short_tree/project"
dependency_dir="$short_tree/dependencies"
source_path="$(cygpath -w "$source_dir"),$(cygpath -w "$short_tree/runtime"),$(cygpath -w "$dependency_dir")"

cmd_flag="/c"
if [ "$(uname -o)" = "Msys" ]; then
    cmd_flag="//c"
fi

echo "ActionScript sources: $(find "$source_dir" -name '*.as' | wc -l)"
output="$(cmd "$cmd_flag" "$compiler" "-source-path=$source_path" "-include-sources=$(cygpath -w "$source_dir")" "-js-output=$(cygpath -w "$object_dir/js")" "${compiler_flags[@]}" < /dev/null 2>&1)"
status=$?
echo "$output" | grep -v -E 'WARNING: (A terminally|sun.misc|Please consider)|^-|^args:|configname'
# A class no file of the tree defines (an optional dependency of a dependency is not transitive) is reported as
# "ActionScript missing class: X" so ActionScriptPomOptionalDependencyAdder can add the module that has it as a direct
# optional dependency, and the module fails. Other errors only in dependency files follow from such a class or from a
# platform variant the dependency was not built against, and do not fail this project: its own sources and the runtime do.
missing_classes="$(echo "$output" | perl -ne '
    if (/Definition ([A-Za-z0-9_.]+) could not be found/) { my $c = $1; $c =~ s/.*\.//; print "$c\n"; }
    elsif (/Type was not found or was not a compile-time constant: ([A-Za-z0-9_]+)/) { print "$1\n"; }
' | sort -u)"
for class_name in $missing_classes; do
    echo "ActionScript missing class: $class_name"
done
if [ "$status" != "0" ] && [ -z "$missing_classes" ]; then
    project_errors="$(echo "$output" | grep -E '\.as\([0-9]+\)' | grep -v -F "$(cygpath -w "$dependency_dir")")"
    # grep -c reads all of the output: grep -q stops at the first match, and with pipefail the echo it cut off (SIGPIPE on
    # a long output of dependency errors) made this test false
    error_count="$(echo "$output" | grep -c -E '\.as\([0-9]+\)')"
    if [ -z "$project_errors" ] && [ "$error_count" -gt 0 ]; then
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
