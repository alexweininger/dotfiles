function ghc -d "Open GitHub compare in browser" -a "Base branch"
    set remote (git remote 'get-url' origin)
    set remote (string replace .git '' $remote)

    if test -z $argv[1]
        set base main
    else
        set base $argv[1]
    end

    set branch (git branch --show-current)
    set url $remote/compare/$base...$branch
    echo $url
    open -a 'Google Chrome' $url
end
