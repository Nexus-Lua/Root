# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not saveROOT"x duplicated commands.
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
alias root='proot -0 login'
clear

RED="\e[1;31m"
GREEN="\e[1;32m"
BLUE="\e[1;34m"
YELLOW="\e[1;33m"
PURPLE="\e[1;35m"
CYAN="\e[1;36m"
WHITE="\e[1;37m"
BLINK="\e[5m"
RESET="\e[0m"

# Choix de la couleur avec effet clignotant
COLOR="$BLINK$BLUE"

echo -e "$COLOR"
echo "██╗  ██╗██╗██╗  ██╗ ██████╗ ██╗   ██╗"
echo "██║ ██╔╝██║╚██╗██╔╝██╔═══██╗██║   ██║"
echo "█████╔╝ ██║ ╚███╔╝ ██║   ██║██║   ██║"
echo "██╔═██╗ ██║ ██╔██╗ ██║   ██║██║   ██║"
echo "██║  ██╗██║██╔╝ ██╗╚██████╔╝╚██████╔╝"
echo "╚═╝  ╚═╝╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ "
echo -e "$RESET"
echo
echo