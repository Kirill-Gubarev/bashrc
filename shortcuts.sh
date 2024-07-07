#BEGIN---shortcuts---
alias github="start msedge https://github.com"
alias typingclub="start msedge https://www.edclub.com/sportal/" 
#---cd---
alias cd_projects="cd $PATH_projects"		
alias cd_desktop="cd $PATH_desktop"
alias cd_bashrc="cd $PATH_bashrc"

#---notepad++---
alias npp="start notepad++"
alias n++="start notepad++"
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
			start msdge "${PATH_books}/${arg}"
		else
			printC "The book \"${arg}\" does not exist, monkey" -redF
			bookExistsB=0
		fi
	done
	if [ $bookExistsB == 0 ]; then
		ls -A -1 "${PATH_books}"
	fi
}
