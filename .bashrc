if [[ -z "$isDefined" ]]; then
	readonly PATH_bash_scripts="$(dirname "${BASH_SOURCE}")"
fi
#---sources---
source "$PATH_bash_scripts/paths.bashrc"
source "$PATH_bash_scripts/print.bashrc"
source "$PATH_bash_scripts/main_functions.bashrc"
source "$PATH_bash_scripts/shortcuts.bashrc"
source "$PATH_bash_scripts/monkeys.bashrc"

#---commands for bash---
alias n++_bashrc="start notepad++ ~/.bashrc"
alias n++_profile="start notepad++ ~/.profile"
alias restart="start git-bash && exit 0"
alias s_bashrc="source ~/.bashrc"

#---exports---
export BOOST_ROOT=C:/dev/libs/boost_1_84_0

if [[ -z "$isDefined" ]]; then
	readonly isDefined="Already defined"
fi