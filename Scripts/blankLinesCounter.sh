#/bin/bash
echo "La cantidad de lineas en blanco es: "
grep -c "^\s*$" $1
