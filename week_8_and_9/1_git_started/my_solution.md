## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
<!-- Your defnition here -->
stage new file (not yet under version control)

#### branch
<!-- Your defnition here -->
git branch your_branch_name:<br> 
create a branch (copy) of a repo (master) to continue working on the branch alone; allows for changes/updates/modifications/adding new files without impacting the master; you can try out things in the branch, commit changes to the branch and only at the end, if you want to merge your branch with
the master repo and therefore add the branch's commits, you can. Until you merge them, you work on your branch alone, i.e. multiple user can branch a master in order to work on it separately. 

#### checkout
<!-- Your defnition here -->
git checkout master:<br>
go to (master, branch)

#### clone
<!-- Your defnition here -->
use git clone to get a local copy of a remote GitHub repository so you can look at it or start modifying it

#### commit
<!-- Your defnition here -->
git commit -m "TEXT":<br>
add new/updated file to version control;<br>
-m "TEXT" = add a message to describe your commit

#### fetch
<!-- Your defnition here -->
git fetch:<br>
get commits (changes) from your remote repo (GitHub) that do not yet exist
in your local (computer) branch you're currently working in; git fetch stores the
commits in the local repo (branch) but does not automatically merge them with your
local repo. You have to use git merge in order to merge both. <=> git pull

#### log
<!-- Your defnition here -->
git log:<br>
see list of your commits

#### merge
git merge branch:
adding branch to master

#### pull
<!-- Your defnition here -->
git pull:<br>
update local repo under version control with remote version at GitHub;
git pull will merge any pulled commits into the (local) branch you're currently working in<br>
git pull is like 'git fetch AND git merge' <=> git fetch

#### push
<!-- Your defnition here -->
git push origin master:<br>
origin = remote_name ('where' to add)<br>
master = local_branch_name ('what' to add)<br>

push (add) your local branch (master) to GitHub repo (origin)

#### reset
<!-- Your defnition here -->
git reset file_name<br>
unstages the file, ie. it copies the file from the latest commit (back) to the stage (index).
<a href="https://www.atlassian.com/git/tutorial/undoing-changes#!reset">more info</a>

#### rm
<!-- Your defnition here -->
remove file (has to be staged to be removed)

#### status
see overview of staged and unstaged files

=======

## Release 3: Git Workflow

- Push files to a remote repository
- Fetch changes
- Commit locally
