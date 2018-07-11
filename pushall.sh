#!/usr/bin/env bash
for fn in * .; do
    test -d "$fn" &&
    echo "Directory: $fn" &&
    test -e "$fn"/.git || continue
    (
        cd "$PWD"
        cd "$fn"
        git config core.autocrlf true
        git-ad | grep 'HEAD detached' && {
            echo fucking head detached "$PWD/$fn"
            git branch | grep '^..temp$' && {
                git branch -d temp || {
                        echo "ABORT! temp branch is currently live, fix it"
                        exit
                }
            }
            git fetch &&
            git checkout -b temp && 
            git checkout -B master temp && 
            git merge origin master -m 'pushall' &&
            git push && 
            git branch -d temp
        }
        git fetch
        git merge origin master -m 'pushall'
        git push
        # git status
        # git add u
        # git commit -m "$@"
        # git push origin master
    )
done
