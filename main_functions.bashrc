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
function cd_n(){ #repeat cd n times
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
function cmake_b(){ #build this project
	mcd build
	if [ $# -eq 1 ]; then
		if [ $1 == "-r" ]; then #rebuild
			cmake ..
			shift
		fi
	fi
	cmake --build .
	cd ..
}
function rm_td(){ #remove this directory
	local path="$PWD"
	cd ..
	rm -r "$path"
}
function run() {
	local countRuns=1
	if ! [ -z "$1" ]; then
		countRuns="$1"
	fi
	for ((i=0;i<countRuns;i++)); do
		for exe in build/Debug/*.exe; do
			start "$exe"
		done
	done
}