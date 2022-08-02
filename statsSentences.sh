#!/bin/bash

echo "mas larga"
grep -Em1 "^.{$(wc -L <$1)}\$" $1


echo "long mas larga"
cat $1 | awk '{ print length }' | sort -n | tail -1

echo "mas corta"

echo "long mas corta"
awk '{print length}' "$1" | sort | head -1

caract=$(cat $1 | wc -c)
lineas=$(cat $1 | wc -l)
longProm=$(( ${caract} / ${lineas} ))
echo "la longitud promedio de linea es ${longProm}"
