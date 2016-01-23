#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
GIT_APPLY=$PORT_ROOT/tools/git.apply
BUILD_OUT=out

function applyPatch () {
    for patch in `find $1 -name *.patch`
    do
        cp $patch out/
        cd out
        $GIT_APPLY `basename $patch`
        for rej in `find $2 -name *.rej`
        do
          echo "Patch $patch fail"
          exit 1
        done
        cd ..
      done
}

