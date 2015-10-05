#!/bin/bash

format_branch(){
    # TODO Make this configurable
    # git config fire.branchformat=fire/%(user)/%(time)/%(branch)
    echo "fire/$1"
}

local_branches(){
    git for-each-ref --shell --format='%(refname)' refs/heads/
}

current_ref(){
    git symbolic-ref HEAD
}

checkout(){
    if [ -n "$1" ]; then
        echo "Checking out $1"
        #git symbolic-ref HEAD $1
    fi
}

save(){
    echo "Saving $1 from the fire!"

    #formatted=$(format_branch $branch)

    echo "Saved $1 from the fire!"
}

fire() {
    original=$(current_ref)
    save $original

    for branch in $(local_branches); do
        if [ "'$original'" == "$branch" ]; then
            echo "$original has already been saved"
        else
            checkout $branch
            save $branch
        fi
    done
}

fire