if status is-interactive
    # Commands to run in interactive sessions can go here
    # ・
    # ・（他にコマンドがあればここに記述されているはず）
    # ・
    eval (/opt/homebrew/bin/brew shellenv) # <= これをi追加
end

# alias
alias la='ls -la'
alias ll='ls -la'
alias sd='ssh dev_env'
alias sd2='ssh dev_env2'
alias sr='ssh redmine'
alias sy='ssh yuki_dev'
alias sfm='sshfs -F ~/.ssh/config dev_env:/var/www/ mountpoint'
alias sfu='umount -f ~/mountpoint'
alias sfy='sshfs -F ~/.ssh/config yuki_dev:/var/www/ yuki_dev'
alias sfuy='umount -f ~/yuki_dev'
alias gb='git branch'
alias gc='git checkout'
alias gd='git diff'
alias gcb="git switch -c"

# This is equivalent to entering the following function:
function gcb --wraps gitswitch --description 'エイリアスgcb = git switch -c'
    git switch -c $argv
end
alias gs='git status'
alias gst='git status'
alias gl='git log --oneline --graph --decorate --all --date=short --pretty="format:%C(yellow)%h %C(green)%cd %C(blue)%an%C(red)%d %C(reset)%s"'
alias gcm='git checkout master'
alias gpom='git pull origin master'
alias gmm='git merge master'
alias gm='git -c core.hookspath=/dev/null merge'
alias nrd='npm run dev'
alias nrp='npm run prod'
alias nrb='npm run build'

# anyenv
#set -x PATH $HOME/.anyenv/bin $PATH
#eval (anyenv init - fish | source)
#set -x PATH $HOME/.anyenv/envs/ $PATH
#set -x PATH $HOME/.anyenv/envs/nodenv/versions/16.13.0/bin/ $PATH

# fzf
# set -U FZF_LEGACY_KEYBINDINGS 0
# set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"
# 配下のファイルを絞り込みエディタで表示する
# bind \co __fzf_open --editor
# # 履歴からコマンドを絞り込み実行する
# bind \cr __fzf_reverse_isearch
# # alt+cで配下のディレクトを絞り込み移動する
# bind \ec __fzf_cd

# pnpm
#set -gx PNPM_HOME "/Users/yuki_kondo/Library/pnpm"
#set -gx PATH "$PNPM_HOME" $PATH

# settings
set -g theme_newline_cursor yes
set -g fish_prompt_pwd_dir_length 0
set -g theme_display_git_master_branch yes
set -g theme_newline_prompt (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
set -g theme_date_format "+%Y/%m/%d %a %H:%M"

# java
# set -x PATH /usr/local/opt/openjdk@11/bin
set -gx CPPFLAGS "-I/usr/local/opt/openjdk@11/include"

# pnpm
#set -gx PNPM_HOME "/Users/yuki_kondo/Library/pnpm"
#set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

# go
set -x GOPATH $HOME/dev
set -x PATH $PATH $GOPATH/bin

# volta
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
