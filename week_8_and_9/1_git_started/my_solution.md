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

## Release 4: Git Workflow
```
- local commits 

1. mkdir dir_name => local branch (master)
2. cd dir_name
3. git init
4. git add file_name (=> stage file - local)
5. git commit -m "TEXT" (=> commit - local)

-push to GitHub 

6. create remote repo at GitHub (origin)
7. git remote add origin URL (=> link local branch with GitHub)
8. git push origin master (=> upload complete local branch to GitHub)
(possible to use git push only after first push)

- fetch and merge changes made on the remote branch with the changes I made locally

1. git fetch origin (fetch changes made to online repo, i.e. GitHub)
2. git merge origin branch (merge updates of online repo with local work)

or: git pull origin branch (fetch and merge in one step)
```

### Release 5: Reflect
Not having used the terminal to push and fetch/ merge changes for a while, it was helpful to review the tutorials. Writing my own cheatsheet with the right GitWorkflow helped me a lot to understand it. I'm sure I'll come back to my cheatsteet a couple of times, but I after having used the terminal and not the app for a week, I believe I'll have memorized the commands.

What resources did you find to help you answer them?
There are so many git/GitHub tutorials out there, and I don't find many of them extremely helpful. Clear, short and easy to understand is the <a href="https://help.github.com/articles/syncing-a-fork">GitHub Help</a> 

