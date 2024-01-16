# 共通
alias ez='vim -p ~/.zshrc ~/.zsh.d/*'
alias sz='exec zsh'

typeset -gU path PATH

# OSごとの定義
case "${OSTYPE}" in
darwin*)
	# MacOSX
	alias ls='ls -GFw'
	alias ll='ls -l'
	alias la='ls -A'

	alias gv='mvim --remote-tab-silent'
	alias vi='/usr/local/bin/vim'

	alias fcd='source ~/bin/fcd.sh'

    path=(
        $path
    )
	;;
linux*)
	# Linux
	alias ls='ls -F --color=auto'
	alias ll='ls -l'
	alias la='ls -A'

	alias d='LANG=en_US df -hT'

	export JAVA_HOME=/usr/lib/jvm/default-java
	export ANDROID_HOME=$HOME/Android/SDK
	export FLUTTER_ROOT=$HOME/Flutter/SDK

    path=(
		$JAVA_HOME/bin(N-/)
		$ANDROID_HOME/cmdline-tools/latest/bin(N-/)
		$ANDROID_HOME/platform-tools(N-/)
		$FLUTTER_ROOT/bin(N-/)
        $path
    )
	;;
esac
