#!/bin/bash

remote=`git remote -v | awk '/\(push\)$/ {print $2}'`
name=Redacted
email=redacted@gmail.com # default

if [[ $remote == *somerepository.com* ]]; then
  email=redacted@somerepository.com
fi
if [[ $remote == *github.com* ]]; then
  email=redacted@gmail.com
fi

git config user.email $email
git config user.name $name