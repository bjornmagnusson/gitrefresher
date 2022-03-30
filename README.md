# Gitrefresher

Updates all git repositories in all projects.
Assumes the folder structure follows the project/repository structure of Bitbucket.

## Instructions
Place gitrefresher.sh in the folder where your Bitbucket projects are stored.
For example:
* devops
 * docker
 * konfig
* plat 
 * qreg5-startkit
 * accesscontrol
 * standard-components
gitrefresher.sh

When running gitrefresher in the above structure it will update (git pull --rebase) on the current branch, master branch and develop branch