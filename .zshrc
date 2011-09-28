autoload -U compinit
compinit -u

# 先方予測機能
#autoload predict-on
#predict-on

# cdなんていらん
setopt auto_cd
# 自動でpushd
setopt auto_pushd
# 間違ったコマンドを指摘
setopt correct
# 補完リストを詰める
setopt list_packed 

# Environment Variables
export LANG=ja_JP.UTF-8 

export RUBYLIB=$RUBYLIB:~/bin/ruby:~/Novels/Generator
export ANDROID_SDK_HOME=/Applications/Android/sdk
export ANDROID_NDK_HOME=/Applications/Android/ndk

PATH=~/bin:$PATH
PATH=/usr/local/bin:$PATH
PATH=$ANDROID_SDK_HOME/tools:$ANDROID_SDK_HOME/platform-tools:$PATH
PATH=$ANDROID_NDK_HOME:$PATH
export PATH

export MANPATH=/opt/local/share/man:$MANPATH

export TZ='Asia/Tokyo'

# set the number of open files to be 1024
ulimit -S -n 1024

# プロンプトの定義
#autoload promptinit
#promptinit
#prompt redhat
PROMPT="[%n@%m %1d]%# "
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "
RPROMPT="[%~]"

## 補完時に大小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select=1

# 補完候補一覧をカラー表示
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

## Alias
alias ls='ls -GFw'
alias ll='ls -l'
alias la='ls -A'

alias ez='vi ~/.zshrc'
alias sz='source ~/.zshrc'

alias diff='colordiff -u'

alias s='screen'
alias sls='screen -ls'
alias sr='screen -r'

alias irb='irb -r irb/completion'

alias fcd='source ~/bin/fcd.sh'

alias ct='open -a CotEditor'
alias fr='open -a Fraise'
alias mi='open -a mi'
alias gvim='open -a MacVim'
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim -p "$@"'

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
# End of lines configured by zsh-newuser-install

# For rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
