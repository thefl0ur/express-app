## express app

Access with browser http://localhost:8080

### Splitting a subfolder out into a new repository

[Full Instruction](https://docs.github.com/en/get-started/using-git/splitting-a-subfolder-out-into-a-new-repository)

In short:
  * clone repo and cd into it
  * install [git-filter-repo](https://github.com/newren/git-filter-repo) if you don't have it
  * `git filter-repo --path FOLDER-NAME/` filter specified folder
  * `git filter-repo --subdirectory-filter FOLDER-NAME` make that folder new root
  * `git remote add origin https://github.com/USERNAME/REPOSITORY-NAME.git` set origin to your repo
  * `git remote -v` verify
  * `git push -u origin BRANCH-NAME` push

Unfortunately, while this was done without clicking of Fork button, GitHub does not count repo as fork. 
But this can be done via support, or slightly modify instruction and start by not cloning, rather forking and later filtering all out.