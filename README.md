#HPS EPICS

### Getting Started
Using the *master* directly for small changes:
```
git clone https://github.com/wmoore28/epics
```
Edit/add code then commit the changes.  Once ready, push changes to the remote repository.
```
git add <changed files>
git commit -m "Meaningful comments about changes"
git push
```
### Staying in sync
Add a remote to the official repository
```
git remote add wmoore28-epics https://github.com/wmoore28/epics
# get updates from remote branch, most likely master
git pull wmoore28-epics <branch-name>
# if everything looks good...
git push origin master
```
### Using branches
If doing much of a feature add or rework, use a branch.
```
git clone https://github.com/wmoore28/epics.git <local-dir>  # defaults to epics
cd <local-dir>
git branch <branch-name>    # only if creating a new branch
git checkout <branch-name>
```
Edit/add code then commit the changes.  Once ready, push changes to your remote repository.
```
git add <changed files>
git commit -m "Meaningful comments about changes"
git push origin <branch-name>
```
