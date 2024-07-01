shopt -s dotglob

#---PATHS---
if [[ -z "$isDefined" ]]; then
	eval readonly PATH_bashrc="$(dirname "${BASH_SOURCE}")"
	eval readonly PATH_dev="C:/dev"
	eval readonly PATH_books="C:/dev/books/reading_now"
	eval readonly PATH_projects="C:/dev/projects"
	eval readonly PATH_desktop="~/onedrive/desktop"
	
	eval readonly Pdev="$PATH_dev"
	eval readonly Pbooks="$PATH_books"
	eval readonly Pprojects="$PATH_projects"
	eval readonly Pdesktop="$PATH_desktop"
	eval readonly Pbashrc="$PATH_bashrc"
fi

#---SOURCES---
source "$PATH_bashrc/print.bashrc"
source "$PATH_bashrc/main_functions.bashrc"
source "$PATH_bashrc/shortcuts.bashrc"
source "$PATH_bashrc/monkeys.bashrc"

#---COMMANDS FOR BASH---
function s_bashrc(){
	clear
	source "${PATH_bash_scripts}/.bashrc"
}
function restart(){
	start git-bash
	exit 0
}

#---EXPORTS---
export BOOST_ROOT=C:/dev/libs/boost_1_84_0

if [[ -z "$isDefined" ]]; then
	readonly isDefined="Already defined"
fi