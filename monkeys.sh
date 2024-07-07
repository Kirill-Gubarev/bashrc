function hello(){
	if [ $# -eq 0 ];then
		printC "Who are you talking to, monkey" -redF
		return
	fi
	local str="$@"
	case "${str,,}" in
		"monkey")
		printC "Oo! Oo! Oo!" -yellowF
		;;
		"monkeys")
		for ((i=0; i<3; i++)); do
			for ((j=0; j<5; j++)); do
				random_number=$(shuf -i 31-36 -n 1)
				printC "Oo! " -n "-$random_number"
			done
			echo
		done
		;;
		"to all the monkeys")
		for ((i=0; i<20; i++)); do
			for ((j=0; j<10; j++)); do
				random_number=$(shuf -i 31-36 -n 1)
				printC "Oo! " -n "-$random_number"
			done
			echo
		done
		;;
		*)
		printC "The monkeys stare in silence" -darkF
		;;
	esac
}
function monkey(){
	echo ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣿⣿⣿⣿⣿⣿⠟⡇⠉⠄⠄⠄⡾⢿⠄⢻⡎⠄⠒⡄⠙⣿⣿⣿⣿⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠻⠏⢰⡿⣿⠏⣰⢀⡉⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣿⣿⡿⢿⡟⠄⢀⣶⣶⣦⣠⣶⣶⡜⠦⢾⡿⢶⣾⣤⠄⣿⣿⣿⣿⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣿⡟⢸⣶⡇⠄⢸⣿⠟⢿⣿⠛⣿⡇⠄⠘⣶⣧⢹⣿⠄⣿⣿⣿⣿⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣿⣷⣘⣹⡇⠄⠘⣿⣦⣾⣿⣦⣿⡇⠄⢸⣟⣋⣼⣿⠄⣿⣿⣿⣿⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣿⣿⣿⣿⣧⡤⠖⠋⠹⢫⣽⠻⠉⠑⠲⣾⣿⣿⣿⡇⠄⢻⣿⣿⣿⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣿⣿⣿⣿⣿⣀⣀⠄⠄⢀⣇⣀⣤⡤⠴⢿⣿⣿⡿⠃⠄⢸⣿⣿⣿⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣿⣿⣿⣿⣷⣄⠄⠄⠄⠄⠄⠄⠄⠄⣠⡿⠛⠉⠄⠄⢀⣼⣿⣿⣿⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣿⣿⣿⣿⣿⣿⠗⡶⠶⠶⣶⠖⠒⠻⡅⠄⢀⣤⠶⢾⣿⣿⣿⣿⣿⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣿⠯⣄⠄⠙⣇⡸⠁⠄⡴⠛⠻⣦⠄⠙⣦⠟⠁⠄⠄⣿⣿⣿⣿⣿⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⠁⠄⠸⡀⠄⢸⡇⠄⡼⠁⠄⠄⠸⡆⠄⣿⠄⠄⠄⠄⣿⣿⣿⣿⣿⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⠄⠄⠄⡿⠄⠄⣧⢠⡇⠄⠄⠄⠄⢻⠄⣿⠄⠄⠄⠄⣿⣿⣿⣿⣿⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣄⠄⠄⣷⠄⠄⢹⢸⡇⠄⠄⠄⠄⢸⡄⣿⠄⠄⠄⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣿⣿⣿⠁⠄⠄⢸⠸⣧⠄⠄⠄⢀⣾⠄⣿⠄⠄⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣿⣿⡿⠷⠖⠲⠾⢤⣈⠛⢻⡟⠛⢁⡤⠿⠖⠒⠾⢯⡉⠛⠛⢿⣿⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣿⡏⠄⠄⠄⠄⠄⢀⠈⢧⢸⡇⣼⠃⠄⠄⠄⠄⠄⠄⠘⣦⡀⠄⢹⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣿⣧⣄⣿⣀⣀⣀⣾⣴⣾⣿⣿⣿⣦⣿⣄⣀⣀⣼⣠⣼⣿⣇⠄⢸⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⢸⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠄⣼⣿⣿⣿⣿ && sleep 0.1
	echo ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠄⣿⣿⠿⢿⣿ && sleep 0.1
	echo ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠠⣿⡏⠄⠄⣿ && sleep 0.1
	echo ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠄⠉⠄⢀⣼⣿ && sleep 0.1
	echo ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣤⣴⣾⣿⣿
}                                                                                                                                                       
printC "You're a good monkey" -blueF                                                                                                                 
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     
                                                                                                                                                     