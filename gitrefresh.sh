FETCH_DIR=$PWD
PROJECTS=$(ls -d */ | cut -d\/ -f1)
echo "Found projects, $PROJECTS"
for project in $PROJECTS; do     
    cd $FETCH_DIR/$project
    echo "Updating project $project"    
    REPOS=$(ls -d */ | cut -d\/ -f1)
    for repo in $REPOS; do
        cd $FETCH_DIR/$project/$repo
        echo "Updating repository $project/$repo"
        current_branch=$(git branch | grep \* | cut -d ' ' -f2)
        git fetch --all --prune
        for branch in develop master $current_branch; do
            git co $branch
            git pull --rebase        
        done        
        git co $current_branch
    done    
done