### Agenda
 - Broken merge_sort / Yesterday's solution
 - Git Motivation 
 - Git Basics
 - Git Branches
 - Adding and pushing to remote repo's

### Broken Merge_sort

# Git 
### good docs & articles
- https://medium.com/@abeythilakeudara3/version-control-system-cabd8d120986
- version control system (VCS)

## Motivation 
![slides](https://docs.google.com/presentation/d/1iKFDg1UJtcsLpVXTRsDZKMnt-QWpMF9mLAQ-BqQi9SE/edit?usp=sharing)
- save project history
- revert to previous project version
- facilitate collaboration (merging work on a project)

+ picture resource(https://medium.com/@abeythilakeudara3/version-control-system-cabd8d120986)

## Git basics
![process](git-process.png)
### glossary 
+ commit 
+ snapshot

+ 3 states 
  - Modified 
  - Staged
  - Committed
+ 3 places
  - working directory
  - Staging Area(git index)
  - .git directory(repository or local repository)

# initializing a git repository
* `git init`
* `git config --local user.username <your_GitHub_username>`
    - `--local` sets configuration for this local project directory
* `git config --local user.email <you_GitHub_email>`

# adding files
* `git status`
* `git add <file>` - move changes from working directory to staging area
* `git add -A` - stages ALL changes in entire working directory (combines `git add .` and `git add -u`)
* `git add .` - stages ALL changes in current directory (and nested ones)
* `git add -u` - only stages modifications to already tracked files
    - "Untracked" refers to new file that hasn't yet been committed
    - "modified" indicates changes made to a file that has already been prev committed
* `git diff` 

# committing files
* `git commit -m "<message>"`
    - commit messages are required
    - describe the change you made (e.g., "Edit button feature")
* `git log`

# branching
* `git branch` 
* `git branch <new_branch_name>` 
* `git checkout <branch_name>` 
* `git checkout -b <branch-name>` 
* `git merge <branch_name>` 
* Branching: https://www.atlassian.com/git/tutorials/using-branches


# connecting to remote repository on GitHub
* `git remote add <alias_for_remote_repo> <remote_repo_url>` 
* `git remote` 
* `git remote -v` 
* `git push -u <alias_for_remote_repo> <branch_name>` 
* `git push -u <alias_for_remote_repo> <branch_name>` 
* `git clone <remote_repo_url>` 



# misc commands
* `ls -a`