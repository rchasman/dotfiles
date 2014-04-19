# Paths
export PATH="/bin"
export PATH="$PATH:/usr/local/bin:/usr/bin:/usr/X11/bin:/usr/lib"
export PATH="$PATH:/sbin:/usr/sbin:$HOME/bin:usr/bin"
export PATH="$PATH:$HOME/bin:$HOME/git"
export PATH="$PATH:$HOME/git/git-achievements"
export PATH="$PATH:$HOME/git/git-hooks"
export PATH="$PATH:/usr/local"
export PATH="$PATH:/usr/local/Cellar/ruby/2.1.1/bin"
export PATH="$PATH:/usr/local/Cellar/ruby/2.0.0-p247/bin"

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
alias sing='~/Personal/./sing.sh'
alias 453='cd ~/Personal/Fall-2013/453/'
alias bison='/usr/local/Cellar/bison/3.0/bin/./bison'
alias vim='/usr/local/Cellar/vim/7.4/bin/vim'
alias hogs='ps aux | head -1 && ps aux | sort'
alias t='python ~/git/t/t.py --task-dir ~/tasks --list tasks'
alias ccat='pygmentize'
alias djenv='source ~/Personal/django/django-env/bin/activate'
alias pinenv='source ~/Personal/django/pinax-env/bin/activate'
alias dj='cd ~/Personal/django; djenv'
alias djpinax='cd ~/Personal/django; pinenv'
alias djman='python manage.py'
alias ep='vim ~/.zshrc'
alias configulon='cd ~/iPlant/configulon/devs/'
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
alias ohmyzsh="mate ~/.oh-my-zsh"
alias light="./light"
alias fact="elinks -dump randomfunfacts.com | sed -n '/^| /p' | tr -d \|"
alias clock="~/.clock.sh"
alias lectura='ssh rchasman@lectura.cs.arizona.edu'
alias dc='popd'

# iPlant Services
alias clavin='java -jar ~/iPlant/Clavin/target/clavin-1.0.0-SNAPSHOT-standalone.jar'
alias chin='cd ~/iPlant/chinstrap; lein run;'
alias facepalm='java -jar ~/iPlant/facepalm/target/facepalm-0.0.1-SNAPSHOT-standalone.jar -d Munch -U rchasman -f ~/iPlant/de-database-schema/database.tar.gz'
alias plant='cd ~/iPlant/'
alias osm-2='ssh osm-2'
alias services-2='ssh services-2'

# Dreamhost
alias mirfak='ssh rchasman@dogeracing.com'

# Rasberry Pi
alias pi='ssh root@192.168.2.2'

# Mining Rig
alias pumpkin='ssh rchasman@192.168.2.60'
alias paul='ssh root@192.168.2.68 -p 222'

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

. `brew --prefix`/etc/profile.d/z.sh
function precmd () {
    _z --add "$(pwd -P)"
}

# Set to this to use case-sensitive completion
CASE_SENSITIVE="false"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Plugins
# Plugins can be found in ~/.oh-my-zsh/plugins/*
plugins=(git lein lol nyan)
source $ZSH/oh-my-zsh.sh
