#BEGIN---shortcuts---
alias edge="start msedge"
alias github="edge https://github.com"

#---cd---
function cd_(){
	if [ "$#" -eq 0 ]; then
		return
	fi
	for arg in "$@"; do
		cd "$arg"
	done
}
alias cd_projects="cd_ $PATH_projects"
alias cd_desktop="cd_ $PATH_desktop"
alias cd_bash_scripts="cd_ $PATH_bash_scripts"


#---n++---
alias n++="start notepad++"
alias n++_bashrc="n++ $PATH_bash_scripts/.bashrc"
#END---shortcuts---

#---functions---
function open(){
	if [ "$#" -eq 0 ]; then
		printC "What are you going to open, monkey?" -redF
		return
	fi
	for arg in "$@"; do
		if [ -e "${PWD}/${arg}" ]; then
			start msedge "${PWD}/${arg}"
		elif [ -e "${arg}" ]; then
			start msedge "${arg}"
		else
			printC "The file \"${arg}\" does not exist, monkey" -redF
		fi
	done
}
function book(){
	if [ "$#" -eq 0 ]; then
		printC "What are you going to read, monkey?" -redF
		ls -A -1 "${PATH_books}"
		return
	fi
	local bookExistsB=1 #boolean
	for arg in "$@"; do
		if [ -e "${PATH_books}/${arg}" ]; then
			edge "${PATH_books}/${arg}"
		else
			printC "The book \"${arg}\" does not exist, monkey" -redF
			bookExistsB=0
		fi
	done
	if [ $bookExistsB == 0 ]; then
		ls -A -1 "${PATH_books}"
	fi
}