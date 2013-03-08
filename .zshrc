# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="juanghurtado"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gitfast mercurial git-flow autojump history-substring-search ssh-agent heroku)

. /etc/profile
. ~/.profile
. $ZSH/oh-my-zsh.sh
. ~/.npmcompletion
. ~/.nvm/nvm.sh
. ~/.nvm/bash_completion
. ~/.aliases

# Add current folder node_modules binaries to the PATH
PATH=$PATH:node_modules/.bin:~/node_modules/.bin
GREP_OPTIONS="-I --exclude-from=${HOME}/.grep-exclude --exclude-dir=.git --exclude-dir=.svn --exclude-dir=node_modules ${GREP_OPTIONS}"

setopt printeightbit
unsetopt correctall

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# TMUX
if which tmux 2>&1 >/dev/null; then
    #if not inside a tmux session, and if no session is started, start a new session
    test -z "$TMUX" && (tmux attach || tmux new-session) && exit 0
fi
