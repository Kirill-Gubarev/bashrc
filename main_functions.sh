#make directory and go to it
function mcd() { 
	if [ $# -eq 0 ]; then
		printC "Some monkey didn't specify the folder name" -redF
		return
	fi
	
	for arg in $@; do
		mkdir -p "$arg"
		cd "$arg"
	done
}

#remove this directory
function rmthis(){ 
	local path="$PWD"
	cd ..
	rm -r "$path"
}

#build this project
function cmakeb(){ 
	local Brun=0 #BOOLLEAN
	mcd build #mkdir build && cd build
	if [ $# -gt 0 ]; then
		while [ $# -gt 0 ]; do
			case $1 in
			
				#REBUILD
			  "-R") 
				cmake ..
				;;
				
				#RUN
				"-r") 
				Brun=1
				if [[ $2 =~ ^[0-9]+$ ]]; then
					Brun=$2
				fi
				shift
				;;
				
				#ERROR
			  *)
				echo "$1 is the wrong argument"
				;;
				
			esac
			shift
		done
	fi
	cmake --build .
	if [ $? -eq 1 ]; then Brun = 0; fi
	cd ..
	run $Brun
}

#run this project
function run() { 
	local countRuns=1
	
	#if not empty
	if [ -n "$1" ]; then countRuns="$1"; fi
	#if received 0, or less
	if [ $countRuns -le 0 ]; then return; fi
	
	for ((i=0;i<countRuns;i++)); do
		for exe in build/Debug/*.exe; do
			start "$exe"
		done
	done
}

#run visual studio
function runsln() { 
	start "build/"*.sln
}

#Create project template
function project_template(){

	#exit if the git has been initialized
	if [ -d ".git" ]; then
		echo -e "\e[33mgit has already been initialized\e[0m"
		return
	fi

	git init
	mkdir -p src build external
	echo -e "build\nexternal">.gitignore
	
	#copy the main.cpp template
	cp "$PATH_bashrc/templates/main.cpp" "./src"

	#copy the CmakeLists.txt template and insert the project name	
	cp "$PATH_bashrc/templates/CmakeLists.txt" .
	sed -i "s/#\[\[NAME\]\]/$(basename $PWD)/g" "CmakeLists.txt"
	
	echo -e "\e[34mThe template is ready\e[0m"
}
