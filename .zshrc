# Use vim as editor
export VISUAL=vim
export EDITOR="$VISUAL"
alias editor="$EDITOR"
alias edit="editor"

# zshrc
export PROFILE="~/.zshrc"
alias profile="editor $PROFILE"
alias reload="source $PROFILE"

# make ls colours work well with dark themes
eval `dircolors ~/.dircolors`

# No bell
unsetopt beep                   # no bell on error
unsetopt hist_beep              # no bell on error in history
unsetopt list_beep              # no bell on ambiguous completion

# 1password
opon() {
if [[ -z $OP_SESSION_my ]]; then
  eval $(op signin my)
    fi
}

opoff() {
  op signout
  unset OP_SESSION_my
}

getpwd() {
  opon
  op get item "$1" --fields password
  opoff
}

# WSL
alias explorer="explorer.exe"
alias open="cmd.exe /C start"
cdw () {
    cd $(wslpath -u $1)
}

# Ubisense
alias ubib="ubisense_service_admin.exe backup"
alias ubis="ubisense_service_admin.exe status"
alias ubisr="ubis | grep -v \"Running Running\""
alias pc="open UbisensePlatformControl.exe"

# ls aliases
alias lsa='ls -lah --color=auto'
alias l='ls -lah --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -lAh --color=auto'

# git aliases
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gcl='git clone --recurse-submodules'
alias gcmsg='git commit -m'
alias gd='git diff'
alias glg='git log --stat'
alias glgp='git log --stat -p'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glo='git log --oneline --decorate'
alias glol="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias glols="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --stat"
alias glod="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'"
alias glods="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short"
alias glola="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all"
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias gp='git push'
alias gpd='git push --dry-run'
alias gst='git status'

# Starship prompt
eval "$(starship init zsh)"
