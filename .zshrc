#------------------------------------------------------------------------------
#     ___           ___           ___             ___     __     ___
#    /  /\         /  /\         /  /\           /__/|   / /\   /  /\
#   /  /::\       /  /::\       /  /:/_          | |:|  / /:/  /  /:/_
#  /  /:/\:\     /  /:/\:\     /  /:/ /\         | |:|  |_|/  /  /:/ /\
# /  /:/~/:/    /  /:/  \:\   /  /:/ /:/_        | |:|       /  /:/ /::\
#/__/:/ /:/___ /__/:/ \__\:\ /__/:/ /:/ /\  _____|_|:|      /__/:/ /:/\:\
#\  \:\/:::::/ \  \:\ /  /:/ \  \:\/:/ /:/ /  /::::::\      \  \:\/:/~/:/
# \  \::/~~~~   \  \:\  /:/   \  \::/ /:/  ~~~~~~~  \:\      \  \::/ /:/
#  \  \:\        \  \:\/:/     \  \:\/:/          \  \:\      \__\/ /:/
#   \  \:\        \  \::/       \  \::/            \  \:\       /__/:/
#    \__\/         \__\/         \__\/              \__\/       \__\/
#
#                     Zany Zsh Run Configuration
#------------------------------------------------------------------------------

# Paths
export PATH="/bin"
export PATH="$PATH:/usr/local/bin:/usr/bin:/usr/X11/bin:/usr/lib"
export PATH="$PATH:/sbin:/usr/sbin:$HOME/bin:usr/bin"
export PATH="$PATH:$HOME/bin:$HOME/git"
export PATH="$PATH:$HOME/git/git-achievements"
export PATH="$PATH:$HOME/git/git-hooks"
export PATH="$PATH:/usr/local"
export PATH="$PATH:$HOME/.rvm/bin"

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

# System
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
alias cl='clear'
alias cls='clear; ls'
alias lsl='ls -l'
alias lsa='ls -A'
alias lsg='ls | grep'
alias hist='history'
alias fact="elinks -dump randomfunfacts.com | sed -n '/^| /p' | tr -d \|"
alias lectura='ssh rchasman@lectura.cs.arizona.edu'
alias dc='popd'

# Git
alias git="git-achievements"
alias githug="githug"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gc="git-achievements commit"
alias gs="git-achievements status"
alias gai='git-achievements add -i'
alias ga='git-achievements add'
alias gbr='git-achievements branch'
alias gbl='git-achievements blame'
alias grm='git-achievements rm'
alias grmc='git-achievements rm --cached'
alias gls='git-achievements ls-files'
alias gst='git-achievements stash'
alias gcl='git-achievements clone'
alias gcp='git-achievements cherry-pick'
alias gchk='git-achievements checkout'
alias gpl='git-achievements pull'
alias nano='vim'

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Plugins
# Plugins can be found in ~/.oh-my-zsh/plugins/*
plugins=(git lein lol nyan)
source $ZSH/oh-my-zsh.sh
