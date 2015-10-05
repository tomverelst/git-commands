#!/bin/bash

format_branch(){
    # TODO Make this configurable
    # git config fire.branchformat=fire/%(user)/%(time)/%(branch)
    echo "fire/$1"
}

local_branches(){
    git for-each-ref --shell --format='%(refname)' refs/heads/
}

checkout(){
    if [ -n "$1" ]; then
        echo "Checking out $1"
        #git symbolic-ref HEAD $1
    fi
}

fire() {
    for branch in $(local_branches); do
        #echo $branch
        checkout $branch
        #formatted=$(format_branch $branch)
        #echo $formatted
    done
}

fire