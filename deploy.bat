@echo off

for /f "usebackq tokens=* delims=" %%A in (`git status -s`) do set diff=%%A

if not "%diff%"=="" (
  echo "The working directory is dirty. Please commit any pending changes."
  exit
)

echo "************ Deleting old publication ************"
Remove-Item public -Force -Recurse

echo "************ Generating site ************"
hugo

echo "************ git add && git commit ************"
git add public/
set datetime=%date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%
git commit -m "release %datetime%"

echo "************ Updating master branch ************"
git subtree push --prefix public/ origin master

echo "************ Updating source branch ************"
git push origin source

echo "************ Success Deploy ************"
