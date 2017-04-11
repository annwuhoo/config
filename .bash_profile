# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
   . ~/.bashrc
fi

PATH=$PATH:$HOME/bin
export PATH

## GNU screen aliases
alias sls='screen -ls'
alias srs='screen -r'
