#!/bin/bash

echo "************ Deleting old publication ************"
rm -rf public

echo "************ Generating site ************"
hugo

git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"

echo "************ git add && git commit ************"
git add public/
git commit -m "release `date '+%Y-%m-%d %H:%M'`"

echo "************ Updating master branch ************"
git subtree push --prefix public/ origin master

echo "************ Updating source branch ************"
git push origin source

echo "************ Success Deploy ************"
