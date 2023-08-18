#!/bin/bash

cd /home/shobhit/my-work/assg6/test-repo-02
git checkout develop
git branch -d release
git checkout -b release
my_time=$(date +"%d/%m/%Y_%H:%M:%S")
echo "Great  commit at  $my_time" >> /home/shobhit/Desktop/sp-output.txt
echo "Great release notes on $my_time" >> release_notes.txt
git add . 
git commit  -m "Great committed on $my_time"

git checkout develop
git merge release
git checkout main
git merge release
git push origin main develop
echo "all done" >> /home/shobhit/Desktop/sp-output.txt
