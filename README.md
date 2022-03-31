# Gitrefresher

Updates all git repositories in all projects.
Assumes the folder structure follows the project/repository structure of Bitbucket.

## Instructions
Place gitrefresher.sh in the root of the folder where your Bitbucket projects are stored.

For example:
```
├── PROJECT1
│   ├── REPOSITORY1
│   └── REPOSITORY2
└── PROJECT2
    ├── REPOSITORY1
    └── REPOSITORY2
gitrefresher.sh
```

When running gitrefresher in the above structure it will update (git pull --rebase) on the current branch, master branch and develop branch for PROJECT1/REPOSITORY1, PROJECT1/REPOSITORY2, PROJECT2/REPOSITORY1, PROJECT2/REPOSITORY2
