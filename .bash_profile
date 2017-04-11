export PATH=$PATH:~/bin

# bash aliases
alias ls='ls -G'
alias ll='ls -lart'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias listsource='ls *.c *.h'

# tmux aliases
alias tat='tmux a -t'
alias tls='tmux list-sessions'
alias tns='tmux new -s'
alias tss='tmux switch -t'
alias tks='tmux kill-session -t'

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# added by Anaconda3 4.2.0 installer
export PATH="/Users/yuanchihwu/anaconda/bin:$PATH"
