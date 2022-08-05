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
		bash blankLinesCounter.sh file.txt
		break
		;;

		"Find Names")
		echo "Script Elegido: $script"
		bash findNames.sh file.txt
		break
		;;

		"Stats Sentences")
		echo "Script Elegido: $script"
		bash statsSentences.sh file.txt
		break
		;;

		"Stats Usage Words")
		echo "Script Elegido: $script"
		bash statsUsageWords.sh file.txt
		break
		;;

		"Stats Words")
		echo "Script Elegido: $script"
		bash statsWords.sh file.txt
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