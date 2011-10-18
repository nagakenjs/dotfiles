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

source ~/.zsh.d/zshenv

export TZ='Asia/Tokyo'

# Scala用文字化け対策
export JAVA_OPTS="-Dfile.encoding=UTF-8"

# set the number of open files to be 1024
ulimit -S -n 1024

# プロンプトの定義
#autoload promptinit
#promptinit
#prompt redhat
PROMPT="[%n@%m %1d]%# "
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "
RPROMPT="[%~] (%T)"

## 補完時に大小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select=1

# 補完候補一覧をカラー表示
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

## Alias
source ~/.zsh.d/zshalias

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
# End of lines configured by zsh-newuser-install

# For rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
