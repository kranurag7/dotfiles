## git 
if command -v git &> /dev/null
    ### push
    function git_push_current_branch
        echo git push origin (git rev-parse --abbrev-ref HEAD)
    end

    ### force-with-lease
    function git_pushf_current_branch
        echo git push origin (git rev-parse --abbrev-ref HEAD) --force-with-lease
    end

    # git pull --rebase
    function git_pull_rebase
        echo git pull origin (git rev-parse --abbrev-ref HEAD) --rebase
    end

    abbr -a g 'git'
    abbr -a gb 'git branch -v'
    abbr -a gbr 'git branch -r' # list remote branches
    abbr -ag gbm 'git branch --merged'

    abbr -ag gce 'git config -e'
    abbr -ag grt 'cd (git rev-parse --show-toplevel)'
    abbr -ag gst 'git status'
    abbr -ag gcob 'git checkout -b'

    ### switch
    abbr -ag gswc 'git switch -c'
    abbr -ag gsw 'git switch'
    abbr -ag grv 'git remote -v'
    abbr -ag ggpush --function git_push_current_branch
    abbr -ag ggpushf --function git_pushf_current_branch

    ### diff
    abbr -a gd 'git diff | riff'
    abbr -ag gds 'git diff --shortstat --cached'
    abbr -a gdd 'git diff | delta'
    abbr -a gdr 'git diff | riff'
    abbr -a gdn 'git diff --name-only --relative'

    ### reset 
    abbr -a grst 'git reset --hard'

    ### switch 
    abbr -a gsm 'git switch main'

    ### rebase
    # abbr -ag grb --set-cursor 'git rebase -i HEAD~%'

    ### pulls
    abbr -a gp --function git_pull_rebase
    abbr -a gpo 'git push origin'
    abbr -a gaa 'git add --all'

    ### fetches
    abbr -ag gf 'git fetch'
    abbr -ag gfo 'git fetch origin'
    abbr -ag gfu 'git fetch upstream'
    abbr -ag gfop 'git fetch origin --prune' # fetch while pruning 

    ### commits
    abbr -a gcs 'git commit -s -v' # opens up your default git editor
    abbr -ag gcan 'git commit --amend --no-edit'

    alias glo 'git log --color=always --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

    ### pr-review 
    abbr -a gpr --set-cursor "git fetch origin pull/%/head:"
end
