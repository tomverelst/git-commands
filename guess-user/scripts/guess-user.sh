#!/bin/bash

remote=`git remote -v | awk '/\(push\)$/ {print $2}'`
name=Redacted
email=redacted@gmail.com # default
signingkey=REDACTED # default

if [[ $remote == *somerepository.com* ]]; then
  email=redacted@somerepository.com
  signingkey=REDACTED
fi
if [[ $remote == *github.com* ]]; then
  email=redacted@gmail.com
  signingkey=ANOTHERKEY
fi
if [[ $remote == *gitlab.com* ]]; then
  email=redacted@gmail.com
  signingkey=YETANOTHERKEY
fi

git config user.email $email
git config user.name $name
git config user.signingkey $signingkey
