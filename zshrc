os=`uname`

# Path to your oh-my-zsh installation.
if [ $os = "Darwin" ] ; then
  export ZSH=/Users/david/.oh-my-zsh
elif [ $os = "Linux" ] ; then
  export ZSH=/home/david/.oh-my-zsh
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
unsetopt nomatch

# rbenv
export PATH="/Users/david/.rbenv/bin:$PATH"
export PATH="/Users/david/.rbenv/shims:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Path configuration
export PATH="~/code/dotfiles:$PATH"

if [ $os = "Darwin" ] ; then
  export PATH="/usr/local/heroku/bin:$PATH"
  export PATH="/usr/local/Cellar/vim:$PATH"
elif [ $os = "Linux" ] ; then
  # export PATH="/home/david/code/dotfiles:/home/david/local/bin:/usr/local/rvm/gems/ruby-2.2.0/bin:/usr/local/rvm/gems/ruby-2.2.0@global/bin:/usr/local/rvm/rubies/ruby-2.2.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/rvm/bin:/usr/local/java/jdk1.7.0_02/bin:/usr/local/java/jdk1.7.0_02/jre/bin"
  # don't think this is necessary right now
fi

alias be="bundle exec"
alias ls="ls -aG"
alias es="exec $SHELL"
alias zshrc="vim ~/code/dotfiles/zshrc"
alias vimrc="vim ~/code/dotfiles/vimrc"
alias tmconf="vim ~/code/dotfiles/tmux.conf"
alias gitconf="vim ~/code/dotfiles/gitconfig"

# tmux
alias tmkill="tmux kill-session -t"
alias tmls="tmux ls"
alias tmnew="tmux new -s"
alias tmatt="tmux attach -t"

# move around
alias blog="cd ~/code/blog"
alias beedle="cd ~/work/personal/beedle"
alias dotfiles="cd ~/code/dotfiles"
alias upcase="cd ~/code/ruby/upcase"
alias stats="cd ~/work/stats"

# git
alias gaa="git add -A"
alias gb="git branch"
alias gca="git commit -am"
alias gcm="git checkout master"
alias gco="git checkout"
alias gf="git fetch"
alias gp="git pull"
alias gs="git status"
alias gitkill="git checkout . && git clean -f -d"

alias rbinstall='RUBY_CONFIGURE_OPTS=--with-readline-dir=`brew --prefix readline` rbenv install'
