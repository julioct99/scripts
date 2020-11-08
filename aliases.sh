# [git clean] : Removes all git branches that are merged to master
unlias gitc
alias gitc="git branch --merged | grep -v \"\*\" | xargs -n 1 git branch -d"
