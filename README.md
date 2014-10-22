#HPS EPICS

## Getting Started
Using the *master* directly for small changes:
```
git clone https://github.com/wmoore28/epics.git
```
Edit/add code then commit the changes.  Once ready, push changes to the remote repository.
```
git add <changed files>
git commit -m "Meaningful comments about changes"
git push
```

## Using branches
If doing much of a feature add or rework, use a branch.
```
git clone https://github.com/wmoore28/epics.git <local-dir>  # defaults to epics
cd <local-dir>
git branch <branch-name>    # only if creating a new branch
git checkout <branch-name>
```
Edit/add code then commit the changes.  Once ready, push changes to the remote repository.
```
git add <changed files>
git commit -m "Meaningful comments about changes"
git push
```
