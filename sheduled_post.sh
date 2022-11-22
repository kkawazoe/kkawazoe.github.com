#!/bin/bash

echo "************ Deleting old publication ************"
rm -rf public

echo "************ Generating site ************"
hugo

if [[ $(git status -s) ]]; then
  echo "The working directory is dirty. Please commit any pending changes."
  exit 1
fi

if test -z "`git status --porcelain`"; then
  echo "Is not modified. Workflow exit."
fi

echo "************ git add && git commit ************"
git add public/
git commit -m "release `date '+%Y-%m-%d %H:%M'`"

echo "************ Updating master branch ************"
git subtree push --prefix public/ origin master

echo "************ Updating source branch ************"
git push origin source

echo "************ Success Deploy ************"
