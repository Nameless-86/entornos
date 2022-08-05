# Trabajo Practico Entornos
Comision: n° 4

Alumno: Nicola Petetta

# Levantar la imagen

En el archivo raise estan los 2 comandos a usar para "arrancar" la imagen, en caso de querer usar un texto que no sea el de prueba cambiar el contenido del archivo de texto para evitar problemas con el encoding. Antes de esto clonar el repositorio y pararse en la carpeta



# Scripts


## Ejercicio numero 1

`statsWords.sh` Indica la palabra mas corta, la mas larga y el promedio de longitud de un archivo de texto.

Funciona con un while loop que recorre las lineas del archivo y dos for loops que checkean la palabra mas larga y la mas corta, el promedio se hace con wc, contando los caracteres y dividiendolo por la cantidad de palabras

## Ejercicio numero 2

`statsUsageWords.sh` Indica el uso de palabras en un archivo (las palabras deben tener mas de 4 letras), muestra un top 10 ordenado de la que mas aparece a la que menos.

Funciona con grep checkeando una expresion regular que son letras, tanto mayusculas y minusculas que tengan mas de 4 letras, luego se ordenan y se cuentan las apariciones de cada palabra con uniq -c

## Ejercicio numero 3

`findNames.sh`  Sirve para encontrar nombres siguiendo el formato Nnnnnnnnnn, por mas que la palabra no sea un nombre.

Funciona con un while loop que pasa por todas las lineas del archivo y lee cada palabra con un for, por ultimo checkea que la palabra comienza con mayuscula y la devuelve a la salida

## Ejercicio numero 4
`statsSentences.sh`  Sirve para analizar longitud de oraciones, tanto la mas corta como la mas larga y tambien realiza un promedio de longitud. (Una oracion es una linea)

Funciona por un lado (grep -Em1) pasando por las lineas del archivo (wc -L), tomando de a una y comparando cual es la mayor.

Por otro lado se hace uso de awk para conseguir las longitudes de la linea mas larga y mas corta. Y combinando esto para devolver el contenido de la linea mas corta con: | head -1

Para el promedio se usa wc, contando caracteres y dividirlo por la cantidad de lineas. 

## Ejercicio numero 5
`BlankLinesCounter.sh`  sirve para contar las lineas en blanco que tiene un archivo.

Funciona devolviendo las cantidad de lineas que tienen cierto patron (grep -c), en este caso el patron es buscar un inicio de linea que este seguido de 0 o mas espacios hasta el fin de su linea.

