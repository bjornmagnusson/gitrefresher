FETCH_DIR=$PWD
REPOSITORIES_DOT_GIT=$(find . -name .git -type d -prune)
echo "Found repositories, $(dirname $REPOSITORIES_DOT_GIT)"
for repo in $REPOSITORIES_DOT_GIT; do
    cd $(dirname $FETCH_DIR/$repo)
    echo "Updating repository $repo"
    current_branch=$(git branch --show-current)
    git fetch --all --prune
    for branch in develop master $current_branch; do
        git co $branch
        git pull --rebase
    done
    git co $current_branch
done