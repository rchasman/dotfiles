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
export PATH="$PATH:/usr/local/opt/elasticsearch@5.6/bin:$PATH"
export PATH="$PATH:$HOME/go/bin"

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
alias githug="githug"
alias glog="git log --oneline --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
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
