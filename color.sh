echo "Select a color:"
read color
case $color in 
	red)
		col='\033[0;31m'
		;;
	black)
		col='\033[0;30m'
		;;
	green)
		col='\033[0;32m'
		;;
	brown|orange)
		col='\033[0;33m'
		;;
	blue)
		col='\033[0;34m'
		;;
	purple)
		col='\033[0;35m'
		;;
	cyan)
		col='\033[0;36m'
		;;
	gray)
		col='\033[0,37m'
		;;
	*)
		echo "color $color not in the list"
		exit 1
		;;
esac
text="This is just to display the color"
echo -e "$col  $text"
