#.bashrc
# Add bin to path
export PATH="$PATH:/sbin:/usr/sbin:$HOME/bin"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/git"
export PATH="$PATH":~/git/git-achievements
export PATH="$PATH":~/git/git-hooks

# Dynamic resizing
shopt -s checkwinsize

# Custom prompt
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# _______ __ __
#|   _   |  |__|---.-.-----.-----.-----.
#|.      |  |  |  _  |__ --|  -__|__ --|
#|.  _   |__|__|___._|_____|_____|_____|
#|:  |   |
#|::.|:. |
#`--- ---'

# System
alias ep='vim ~/.bashrc'
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

# iPlant Services
alias clavin='java -jar ~/iPlant/Clavin/target/clavin-1.0.0-SNAPSHOT-standalone.jar'
alias facepalm='java -jar ~/iPlant/facepalm/target/facepalm-0.0.1-SNAPSHOT-standalone.jar -d Munch -U rchasman -f ~/iPlant/de-database-schema/database.tar.gz'
alias plant='cd ~/iPlant/'

# Git
alias git="git-achievements"
alias gh="githug"
alias gl="git-achievements log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
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

# This function allows you to easily see what branch you are on inside of a git repo.
function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
   }

   RED="\[\033[0;31m\]"
   YELLOW="\[\033[0;33m\]"
   GREEN="\[\033[0;32m\]"
   NO_COLOUR="\[\033[0m\]"

   PS1="$GREEN\u@machine$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "
