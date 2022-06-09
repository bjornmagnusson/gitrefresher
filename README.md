# Gitrefresher

Updates all git repositories in all subfolders.
Assumes the subfolders from script location is where the git repositories is located.

## Instructions
Place gitrefresher.sh in the root of the folder where your Bitbucket projects are stored.

For example:
```
├── FOLDER1
│   ├── REPOSITORY1
│   └── REPOSITORY2
└── FOLDER2
    ├── REPOSITORY1
    └── REPOSITORY2
gitrefresher.sh
```

When running gitrefresher in the above structure it will update (git pull --rebase) on the current branch, master branch and develop branch for FOLDER1/REPOSITORY1, FOLDER1/REPOSITORY2, FOLDER2/REPOSITORY1, FOLDER2/REPOSITORY2
