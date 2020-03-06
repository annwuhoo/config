#export PATH=$PATH:~/bin

# == ZSH HIGHLIGHTING ==

# Set zsh prompt to "user@hostname:path/to/directory$"
#export PS1='%n@%m::%d$ '

# https://superuser.com/questions/49092/how-to-format-the-path-in-a-zsh-prompt
setopt PROMPT_SUBST
PROMPT='%(!.%F{red}.%F{cyan})%n%f@%F{yellow}%m:%{$(pwd|grep --color=always /)%${#PWD}G%} %f%(!.%F{red}.)%#%f '

# Enable zsh-syntax-highlighting (sourced from https://github.com/zsh-users/zsh-syntax-highlighting)
source ~/Projects/Code/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# == ALIASES ==

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -la'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias listsource='ls *.c *.h'
alias gvim='mvim'
alias c='clear'
alias sshstanf='ssh -X yuanchih@rice.stanford.edu'
#alias tat='tmux a -t'
#alias tls='tmux list-sessions'
#alias tns='tmux new -s'
#alias tss='tmux switch -t'
#alias tks='tmux kill-session -t'

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
#export PATH

# added by Anaconda3 4.2.0 installer
#export PATH="/Users/yuanchihwu/anaconda/bin:$PATH"
