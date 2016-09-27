os=`uname`

export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
unsetopt nomatch
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="$HOME/code/dotfiles:$PATH"

export GOHOME="$HOME/code/go"
export PATH="/usr/local/go/bin:$PATH"


if [ $os = "Darwin" ] ; then
  export PATH="/usr/local/heroku:$PATH"
  export PATH="/usr/local/Cellar/:$PATH"
fi

alias be="bundle exec"
alias ce="chef exec"
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

if [ -e $HOME/.rean-creds ]; then
  source $HOME/.rean-creds
fi
