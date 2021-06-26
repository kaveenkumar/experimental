git --version
git help <verb>
git <verb> --help
git config --global user.name "<user-name>"
git config --global user.email "<user.name@email.com>"
git config --list
git remote add upstream git@gitab.com:<repo-name>.git : adds this url as a upstream for pushes

git init : initiate local tracking
rm -rf .git : remove tracking by deleting
git status
touch .gitignore
nano .gitignore -> ".donottrackfile.ext" | *.exe

git add file.ext : add file to staging area, these files would be committed when commit
git add -A | git add --all: add all untracked files irrespective of directories; adds all untracked files from all directories
git add -A my_dir/ | git add my_dir : add all untracked files from specified directory
git add -u | git add --update : adds all deleted and modified files but not untracked files
git add . : add all changes in current directory 

git commit -m "message" : commits to version database

git log
git log --stat : shows stats of commits; info about files changed
git reflog : shows git history

git clone <url> : clone url to current directory, creates a direactoy same name as the remote repo and clones inside
git clone <url> . : clone the url in current dir but not as a folder, only the files
git remote -v : information about remote repo

git diff : show changes made to code locally
git difftool : opens the changes on a tool
git difftool -t meld | git difftool -t vimdiff | git difftool -t diffmerge
git mergetool : local changes vs remote changes 

git pull origin master
git push origin master

git branch : list all branches
git branch -a : list all branches locally and remotely
git branch new_branch
git branch --merged : shows the branches that has been merged so far
git branch -d new_branch : delete new_branch; sometimes 'git branch -D new_branch' for force delete
git checkout new_branch
git checkout -b new_branch
git checkout <git-hash> : change to the specified hash, but in a detached head state

git pull : pulls the remote to local
git push : push the current active branch to remote
git push new_branch : pushed local new_branch to remote new_branch
git push -u origin new_branch : tells git to associate new_branch of local and remote such that later on we can just pull | push with git pull | git push
git merge new_branch : merges new_branch to master; remember to run this command from master
git push origin --delete new_branch : delete branch from remote repo
git push --set-upstream origin new_branch : if new_branch does not exist on remote, this creates and pushes to it

git stash : to delete uncommited changes; also called moving changes to stash
git stash save "message" : removes uncommited changes and saves them in a temporary stash
git stash list : lists all changes that were stashed or saved, returns id with message of stashes
git stash apply <stash id from stash list> : applies the changes from this save
git stash pop : from stash list pick the top and also delete it from the saved list
git stash drop <stash id from stash list> : drop the saved id
git stash clear : delete all the stashes

git checkout file.ext : another way of deleting uncomitted changes, deletes only file.ext changes
git checkout -- file.ext : discard changes in working directory
git checkout -- . : discard changes in all files

git commit --amend -m "correct commit message" : to change the commit message of last commit
git commit --amend : opens a tab that allows to add file(s) to last commit

git revert <git-hash> : reverts all the changes made with the specified commit hash, creates a new commit
git rever -n <git-hash> : reverts changes made with the specified commit hash, does not create a new commit

git reset --soft <git-hash> : deletes the last commit(s) and moves the HEAD to commit of given hash; soft keeps the changes in staging area so that we can commit again
git reset <git-hash> : deletes the last commit(s) and moves the HEAD to commit of given hash; mixed or default reset keeps the changes but in working area and files can be added
git reset --hard <git-hash> : deletes the last commit(s), moves the HEAD to commit of given hash; hard deletes the changes that have been made after the specified hash

git reset file.ext : remove file from staging area to untracked area
git reset : remove all files from staging area

git cherry-pick <git-hash> : after checkout to a branch, running cherry-pick on a hash, copies and pastes the commit to this branch; usefull when it is late noticed that commit has been made on master rather than branch

git show HEAD : most recent commit in current branch; same as latest commit git-hash; this HEAD hash value is visible inside .git/HEAD file in the code directory
git show HEAD~1 : last 2nd commit 
git show HEAD~2 : last 3rd commit
git diff HEAD~2 HEAD~1 : compare changes between older commit head vs newer commit head

git rebase master : when run from a branch, this takes all the latest commits from master that are not in the branch, adds these commits, and on top adds your branch commits

git remote add upstream git@gitlab.com:bragi-rnd/sds/ml-pipeline/<repo-name>.git

git clean -df | git clean -fdx : remove all untracked; d for directories and f for files
