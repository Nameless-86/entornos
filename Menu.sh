#!/bin/bash

centinel=true
while $centinel
do

	echo "-----"
	echo "Bienvenido"
	echo " "
	echo "seleccione el script que quiera usar"
	echo " "
	echo "Si desea salir seleccione Exit"

	PS3="Elegir un script: "

	select script in "Exit" "Blank Lines Counter" "Find Names" "Stats Sentences" "Stats Usage Words" "Stats Words" ; do
		echo "-----"

		case $script in 
		"Blank Lines Counter")
		echo "Script Elegido: $script"
		./Scripts/blankLinesCounter.sh $1
		break
		;;

		"Find Names")
		echo "Script Elegido: $script"
		./Scripts/findNames.sh $1
		break
		;;

		"Stats Sentences")
		echo "Script Elegido: $script"
		./Scripts/statsSentences.sh $1
		break
		;;

		"Stats Usage Words")
		echo "Script Elegido: $script"
		./Scripts/statsUsageWords.sh $1
		break
		;;

		"Stats Words")
		echo "Script Elegido: $script"
		./Scripts/statsWords.sh $1
		break
		;;

		"Exit")
		echo "Hasta Luego"
		centinel=false
		break
		;;

		*)
		echo " "
		echo "Script invalido"
		echo " "
		break
		;;
		esac
	done
done



