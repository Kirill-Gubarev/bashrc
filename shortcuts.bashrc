#BEGIN---shortcuts---
alias edge="start msedge"
alias github="edge https://github.com"

#---cd---
alias cd_projects="cd $PATH_projects"
alias cd_desktop="cd $PATH_desktop"
alias cd_bash_scripts="cd $PATH_bash_scripts"

#---n++---
alias n++="start notepad++"
alias n++_bashrc="n++ $PATH_bash_scripts/.bashrc"
#END---shortcuts---

#---functions---
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