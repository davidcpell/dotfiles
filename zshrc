os=`uname`

# Path to your oh-my-zsh installation.
if [ $os = "Darwin" ] ; then
  export ZSH=/Users/davidpell/.oh-my-zsh
elif [ $os = "Linux" ] ; then
  export ZSH=/home/davidp/.oh-my-zsh
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="murilasso"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

plugins=(git)

# User configuration
if [ $os = "Darwin" ] ; then
  export PATH="/usr/local/rvm/gems/ruby-2.2.0/bin:/usr/local/rvm/gems/ruby-2.2.0@global/bin:/usr/local/rvm/rubies/ruby-2.2.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/rvm/bin:/usr/local/java/jdk1.7.0_02/bin:/usr/local/java/jdk1.7.0_02/jre/bin"

  export PATH="~/.rbenv/shims:$PATH"
  if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

  ### Added by the Heroku Toolbelt
  export PATH="/usr/local/heroku/bin:$PATH"
elif [ $os = "Linux" ] ; then
  export PATH="/home/davidp/local/bin:/usr/local/rvm/gems/ruby-2.2.0/bin:/usr/local/rvm/gems/ruby-2.2.0@global/bin:/usr/local/rvm/rubies/ruby-2.2.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/rvm/bin:/usr/local/java/jdk1.7.0_02/bin:/usr/local/java/jdk1.7.0_02/jre/bin"
fi

source $ZSH/oh-my-zsh.sh

#  Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
 export EDITOR='vim'
else
 export EDITOR='atom'
fi

# set up path for vim 7.4
export PATH="/usr/local/Cellar/vim/7.4.712_1/bin:$PATH"

# use 256 color mode for vim
export TERM=xterm-256color

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

unsetopt nomatch
alias es="exec $SHELL"
alias zshrc="vim ~/code/dotfiles/zshrc"
alias vimrc="vim ~/code/dotfiles/vimrc"
alias tmconf="vim ~/code/dotfiles/tmux.conf"

# move around
alias blog="cd ~/code/blog"
alias beedle="cd ~/work/personal/beedle"
alias dotfiles="cd ~/code/dotfiles"
alias upcase="cd ~/code/ruby/upcase"
alias stats="cd ~/work/stats"

# git
alias gaa="git add -A"
alias gb="git branch"
alias gco="git checkout"
alias gs="git status"
alias gca="git commit -am"
alias gcm="git checkout master"
alias gitkill="git checkout . && git clean -f -d"

# zeus
alias zs="zeus start"
alias zc="zeus console"
alias zr="zeus rspec"

# Ai specific
alias nhltest="RAILS_ENV=nhl_test"
alias nhldev="RAILS_ENV=nhl_development"
alias nhlprod="RAILS_ENV=nhl_production"
cd ~/work/stats
