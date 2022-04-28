#!/bin.bash

git config --global user.name $1
git config --global user.email $2
git config --global user.password $3
git config --global credential.helper store
git config --global push.default simple

echo $4 >> $5
git add $5
git commit -a -m $6
#git push
git push --set-upstream origin master