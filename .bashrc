shopt -s dotglob

#---PATHS---
if [[ -z "$isDefined" ]]; then
	eval readonly PATH_bashrc="$(dirname "${BASH_SOURCE}")"
	eval readonly PATH_projects="C:/dev/projects"
	eval readonly PATH_desktop="~/onedrive/desktop"
fi

#---SOURCES---
source "$PATH_bashrc/functions.sh"
source "$PATH_bashrc/shortcuts.sh"

#---BASH wrapper functions---
function source_bashrc(){
	clear
	source "${PATH_bashrc}/.bashrc"
}
function restart(){
	start git-bash
	exit 0
}

#---EXPORTS---
export BOOST_ROOT=C:/dev/libs/boost_1_84_0

#prohibiting redefinition of variables
if [[ -z "$isDefined" ]]; then
	readonly isDefined="Already defined"
fi