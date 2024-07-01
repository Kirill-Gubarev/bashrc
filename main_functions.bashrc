function mcd() { #make directory and go to it
	if [ $# -eq 0 ]; then
		printC "Some monkey didn't specify the folder name" -redF
		return
	fi
	
	for arg in $@; do
		mkdir -p "$arg"
		cd "$arg"
	done
}
function cdn(){ #repeat cd n times
	if [ $# -eq 0 ]; then
		printC "Some monkey didn't specify the arguments" -redF
		return
	fi
	
	if [ $# -eq 1 ]; then
		cd "$1"
		return
	fi
	
	if ! [[ "$2" =~ ^[0-9]+$ ]]; then
		printC "you need to specify a number" -redF
		return
	fi
	for ((i=0; i<$2; i++)); do
		cd "$1"
	done
}
function rmthis(){ #remove this directory
	local path="$PWD"
	cd ..
	rm -r "$path"
}
function cmakeb(){ #build this project
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

function run() { #run this project
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
function runsln() { #run visual studio
	start "build/"*.sln
}