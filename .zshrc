autoload -U compinit
compinit -u

# 先方予測機能
# autoload predict-on
# predict-on

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

export TZ='Asia/Tokyo'

# Scala用文字化け対策
export JAVA_OPTS="-Dfile.encoding=UTF-8"

# set the number of open files to be 1024
ulimit -S -n 1024

# プロンプトの定義
#autoload promptinit
#promptinit
#prompt redhat
local GREEN=$'%{\e[1;32m%}'
local YELLOW=$'%{\e[1;33m%}'
local BLUE=$'%{\e[1;34m%}'
local DEFAULT=$'%{\e[1;m%}'
local RED=$'%{\e[1;31m%}'
PROMPT="%F{red}[%n@%m:%~ (%T)]%f
%# "
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "
#RPROMPT="[%~] (%T)"

## 補完時に大小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select=1

# 補完候補一覧をカラー表示
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

## 外部の設定ファイル読み込み
for conf in $HOME/.zsh/*.zsh ; do
  source "${conf}"
done
unset conf

# キーバインドはemacsで
bindkey -e

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
# End of lines configured by zsh-newuser-install

autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
zstyle ':chpwd:*' recent-dirs-max 1000
zstyle ':chpwd:*' recent-dirs-default yes
zstyle ':chpwd:*' recent-dirs-file "$HOME/.cache/shell/chpwd-recent-dirs"
zstyle ':chpwd:*' recent-dirs-pushd true
zstyle ':completion:*' recent-dirs-insert both

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end

# tmuxinator
# source ~/.zsh.d/completion/tmuxinator.zsh
