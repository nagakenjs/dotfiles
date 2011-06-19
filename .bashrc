export PATH=/opt/local/bin:$PATH
export PATH=$PATH:~/bin

export MANPATH=/opt/local/share/man:$MANPATH

export LANG=ja_JP.UTF-8

PS1='[\u@\h \W]\$ '

alias ls='ls -GF'
alias ll='ls -l'
alias la='ls -A'

alias clr='clear'
alias eb='vi ~/.bashrc'
alias sb='source ~/.bashrc'

alias s='screen'
alias sls='screen -ls'
alias sr='screen -r'

alias irb='irb -r irb/completion'

alias fcd='source ~/bin/fcd.sh'
alias here='open .'

alias mi='open -a mi'

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

