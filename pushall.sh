#!/usr/bin/env bash
PWD=$PWD
echo PWD "$PWD"
for fn in * .; do
    echo "Directory: $fn"
    test -e "$fn"/.git || continue
    (
        cd "$PWD"
        cd "$fn"
        git status
        git add -u
        git commit -m "$@"
        git push origin master
    )
    echo "$PWD"
done
