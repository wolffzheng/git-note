#!/bin/bash
git branch tmp
git checkout tmp
git add .
echo "please input commit message:"
read message
git commit -m "$message"
git checkout master
git merge tmp
git push origin master
git branch -d tmp

