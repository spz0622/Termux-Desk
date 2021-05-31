# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

# Default command line prompt.
PROMPT_DIRTRIM=2
PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '

# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi


# Enter Your Username Here
# Hostname can Be Your Desk or Device Name..

export USER=Termuser
export HOSTNAME=Term-Desk


echo "How Are You Today, $USER"
lsd
echo ""

alias ls="lsd"
alias la="lsd -a"
alias rf="rm -rf"
alias extr="tar xf"
alias compr="tar -cvf"
alias i="apt install"
alias rem="apt remove"
alias sd="/sdcard"
alias home="$HOME"
alias used="ncdu"
alias n="nnn"
alias append="echo >>"
