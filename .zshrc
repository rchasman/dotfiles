#------------------------------------------------------------------------------
#      ___           ___           ___             ___     __     ___
#     /  /\         /  /\         /  /\           /__/|   / /\   /  /\
#    /  /::\       /  /::\       /  /:/_          | |:|  / /:/  /  /:/_
#   /  /:/\:\     /  /:/\:\     /  /:/ /\         | |:|  |_|/  /  /:/ /\
#  /  /:/~/:/    /  /:/  \:\   /  /:/ /:/_        | |:|       /  /:/ /::\
# /__/:/ /:/___ /__/:/ \__\:\ /__/:/ /:/ /\  _____|_|:|      /__/:/ /:/\:\
# \  \:\/:::::/ \  \:\ /  /:/ \  \:\/:/ /:/ /  /::::::\      \  \:\/:/~/:/
#  \  \::/~~~~   \  \:\  /:/   \  \::/ /:/  ~~~~~~~  \:\      \  \::/ /:/
#   \  \:\        \  \:\/:/     \  \:\/:/          \  \:\      \__\/ /:/
#    \  \:\        \  \::/       \  \::/            \  \:\       /__/:/
#     \__\/         \__\/         \__\/              \__\/       \__\/
#
#                      Zany Zsh Run Configuration
#------------------------------------------------------------------------------

export SCALA_HOME="/usr/local/share/scala"
export PGDATA="/usr/local/var/postgres"

# Paths
export PATH="$PATH/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/usr/local/lib/node_modules"
export PATH="$PATH:./node_modules/.bin"
export PATH="$PATH:/usr/local/bin:/usr/bin:/usr/X11/bin:/usr/lib"
export PATH="$PATH:/sbin:/usr/sbin:$HOME/bin:usr/bin"
export PATH="$PATH:$HOME/bin:$HOME/git"
export PATH="$PATH:$HOME/git/git"
export PATH="$PATH:$HOME/git/git-hooks"
export PATH="$PATH:/usr/local"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.rvm/bin""TH:$SCALA_HOME/bin"
export PATH="$PATH:$HOME/Library/Python/2.7/bin"
export PATH="$PATH:$HOME/Library/Python/3.7/bin"
export PATH="$PATH:/usr/local/opt/elasticsearch@5.6/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.deno/bin"
export PATH="$PATH:$HOME/.local/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && \
. "$HOME/.rvm/scripts/rvm"

ZSH=$HOME/.oh-my-zsh

# Theme
#ZSH_THEME="robbyrussell"
#ZSH_THEME="funky"
ZSH_THEME="gallois"
#ZSH_THEME="jnrowe"
#ZSH_THEME="muse"
#ZSH_THEME="nanotech"
#ZSH_THEME="norm"

# _______ __ __
#|   _   |  |__|---.-.-----.-----.-----.
#|.      |  |  |  _  |__ --|  -__|__ --|
#|.  _   |__|__|___._|_____|_____|_____|
#|:  |   |
#|::.|:. |
#`--- ---'

# 2018
alias watch='watch '
alias tn='task ls limit:1 | head -n 4 | tail -n 1 | figlet -f slant | cowsay -n -f $(ls /usr/local/share/cows | sed -n "$((RANDOM%$(ls | wc -l)+1))p") | lolcat'

# Installed
alias btop='bpytop'
alias ping='prettyping --nolegend'
alias help='/usr/local/Cellar/tldr/1.3.0_2/bin/tldr'
alias preview="fzf --preview 'bat --color \"always\" {}'"
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(vim {})+abort'"

# System
alias lc='colorls'
alias hogs='ps aux | head -1 && ps aux | sort'
alias t='python ~/git/t/t.py --task-dir ~/tasks --list tasks'
alias ccat='pygmentize'
alias djman='python manage.py'
alias ep='vim ~/.zshrc'
alias please='eval "sudo $(fc -ln -1)"'
alias vp='vim ~/.vimrc'
alias lcat='lolcat'
alias cdd='cd ../'
alias cddd='cd ../../'
alias clear='[ $[$RANDOM % 10] = 0 ] && timeout 1 cbeams -o; clear || clear'
alias cl='clear'
alias ls='lsd'
alias cls='clear; ls'
alias lsl='ls -l'
alias lsa='ls -A'
alias lsg='ls | grep'
alias hist='history'
alias fact="elinks -dump randomfunfacts.com | sed -n '/^| /p' | tr -d \|"
alias parrot='curl parrot.live'
alias matrix='cmatrix'
alias beams='cbeams'

# Git
alias gti='git'
alias githug="githug"
alias glog2="git log --graph --pretty=format:'%C(yellow)%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gc="git commit"
alias gs="git status"
alias gai='git add -i'
alias ga='git add'
alias gbr='git branch'
alias gbl='git blame'
alias grm='git rm'
alias grmc='git rm --cached'
alias gls='git ls-files'
alias gst='git stash'
alias gcl='git clone'
alias gcp='git cherry-pick'
alias gchk='git checkout'
alias gpl='git pull'
alias nano='vim'

# ISLO
alias islo='cd ~/islo/'

# Lawmatics
alias boost='cd ~/boost/boost-api/'
alias boostc='cd ~/boost/boost-client/'
alias boosti='cd ~/boost/boost-infra/'
alias boostnm='cd ~/boost/lm-gatsby-marketing/'
alias boostw='ssh -i ~/Lawmatics_Marketing.pem bitnami@44.235.99.1'
alias boostw-staging='ssh -i ~/Lawmatics_Marketing.pem bitnami@52.40.227.121'
alias boostu='ssh ec2-user@ssh-dev.lawmatics.com'
alias boostup='ssh ec2-user@ssh-prod.lawmatics.com'
alias boostbox='ssh -i ~/.ssh/boost.pem ec2-user@50.18.92.107'
alias boostlmsign='ssh -i ~/.ssh/boost.pem ec2-user@54.67.46.43'
alias boostwbox='ssh -i ~/.ssh/boost.pem ec2-user@3.101.130.157'
alias boostw2box='ssh -i ~/.ssh/boost.pem ec2-user@54.183.139.143'
alias boostcbox='ssh -i ~/.ssh/boost.pem ec2-user@3.101.102.124'
alias boostpbox='ssh -i ~/.ssh/boost.pem ec2-user@3.101.62.245'
alias boostp2box='ssh -i ~/.ssh/boost.pem ec2-user@3.101.39.187'
alias boostpabox='ssh -i ~/.ssh/boost.pem ec2-user@18.144.29.121'
alias boostpwbox='ssh -i ~/.ssh/boost.pem ec2-user@13.52.78.186'
alias boostpw2box='ssh -i ~/.ssh/boost.pem ec2-user@13.56.179.208'
alias boostpcbox='ssh -i ~/.ssh/boost.pem ec2-user@13.52.249.127'
alias startapi='boost; IS_OPEN_API=true rails s -p 3001 -P tmp/pids/server_api.pid'


lmapi(){
  curl -H 'Authorization: Bearer 84321cb9a4a058ba625e07c792b91b0753d7f4c6a96f67cb8f7b3611767c4796' localhost:3001/v1/${1} | jq
}

lmpapi(){
  curl -H 'Authorization: Bearer 237c78864c3da6480867550fa456811ce2545e737531c2ff30547306a20d3756' https://api.lawmatics.com/v1/${1} | jq
}

edd(){
  curl -H 'Authorization: Bearer d45nBvtiU2yLZ3LPXcrjZSKcCvYKrSpXOMHLKlva_plE' https://api.lawmatics.com/v1/${1} | jq
}


# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Plugins
# Plugins can be found in ~/.oh-my-zsh/plugins/*
plugins=(git lein lol nyan)
source $ZSH/oh-my-zsh.sh

export NVM_DIR="/Users/rchasman/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# deno completions
fpath=(~/.deno_competions $fpath)
autoload -Uz compinit
compinit -u
