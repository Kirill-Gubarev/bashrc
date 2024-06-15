#---colors and fonts---
if [[ -z "$isDefined" ]]; then
    readonly clearColor=0
	readonly bold=1
	readonly darkF=2
	readonly italic=3
	readonly underlined=4
	readonly inverted=7
	readonly strikethrough=9
	readonly pixel=12
	readonly d_underlined=21

	readonly blackF=30
	readonly redF=31
	readonly greenF=32
	readonly yellowF=33
	readonly blueF=34
	readonly purpleF=35
	readonly cyanF=36
	readonly whiteF=37
	readonly defaultF=39

	readonly blackB=40
	readonly redB=41
	readonly greenB=42
	readonly yellowB=43
	readonly blueB=44
	readonly purpleB=45
	readonly cyanB=46
	readonly whiteB=47
	readonly defaultB=49
fi
#---functions---
function printC(){
	if [ $# -eq 0 ]; then
		printC "Some monkey didn't specify the arguments" redF
		return
	fi
	local nextLineB=0 #boolean
	local str=""
	local color="\e["
	for arg in "$@"; do
		if [[ "${arg,,}" == -* ]]; then
			local _arg="${arg:1}"
			case "${_arg,,}" in
				"n")
					nextLineB=1
				;;
				*)
					if [[ "${_arg:0:1}" =~ ^[0-9]+$ ]]; then
						color+=";$_arg"
					else
						local temp="$_arg";color+=";${!temp}"
					fi
				;;
			esac
		else
			str+="$arg";
		fi
	done
	color+="m"
	if [ "$nextLineB" == 1 ]; then
		echo -e -n "$color$str\e[${clearColor}m"
	else
		echo -e "$color$str\e[${clearColor}m"
	fi
}