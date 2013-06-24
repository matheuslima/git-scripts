!#/bin/sh -x
CURRENT=`git branch | grep '\*' | awk '{print $2}'`
git stash save
git checkout master
git pull origin master
git checkout ${CURRENT}
git rebase master
git stash pop
