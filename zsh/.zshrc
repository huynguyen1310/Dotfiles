
export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "b4b4r07/enhancd", use:init.sh

# Note: To specify the order in which packages should be loaded, use the defer
#       tag described in the next section

# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
# (If the defer tag is given 2 or above, run after compinit command)
zplug "zsh-users/zsh-syntax-highlighting", defer:2

#node version manager
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load


#Alias
alias sail='./vendor/bin/sail'
alias pa='php artisan'

# Some tmux-related shell aliases
# Attaches tmux to the last session; creates a new session if none exists.
alias t='tmux attach || tmux new-session'
alias tn="tmux new -s (pwd | sed 's/.*\///g')"

# Attaches tmux to a session (example: ta portal)
alias ta='tmux attach -t'

alias td='tmux detach'

# Creates a new session
alias tn='tmux new-session'

# Lists all ongoing sessions
alias tl='tmux list-sessions'

alias ls='ls -a --color=auto'
alias ll= 'ls -al --color=auto'
alias c='clear'
alias edit='nvim ~/.zshrc'
alias reload='source ~/.zshrc'

export PATH=~/.composer/vendor/bin:$PATH

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
