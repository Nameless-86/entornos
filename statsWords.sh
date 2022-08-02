#!/bin/bash
value=$1
longest=0

while read line; do
	for word in $line; do
		len=${#word}
	    	if (( len > longest ))
	    	then
			longest=$len       
		       	palabraLarga=$word
	       	fi
	done
	for wordos in $line; do
		: ${palabraCorta:=$wordos}
		if [ ${#wordos} -lt ${#palabraCorta} ]
		then
			palabraCorta=$wordos
			corta=${#wordos}
		fi
	done
done < $value

caract=$(cat $1 | wc -c)
palabras=$(cat $1 | wc -w)
longProm=$(( ${caract} / ${palabras} ))
echo "$palabraLarga es la mas larga $longest"
echo "$palabraCorta es la mas corta $corta"
echo "El promedio de longitud de palabras es ${longProm}"

