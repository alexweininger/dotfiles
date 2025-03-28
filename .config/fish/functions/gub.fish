# unstages all changes in the current branch compared to main
function gub
    # Find the common ancestor commit
    set -l common_ancestor (git merge-base main HEAD)
    
    # Count the number of commits being unstaged
    set -l commit_count (git rev-list --count HEAD ^$common_ancestor)
    
    # Reset to the common ancestor
    git reset $common_ancestor
    
    # Output the number of commits unstaged
    echo "Unstaged $commit_count commits"
end