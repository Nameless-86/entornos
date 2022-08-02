#!/bin/bash

echo "El top 10 de palabras mas repetidas es:"
echo "cantidad | palabra"
cat $1 | grep -oE "[a-zA-Z]{4,}" | sort | uniq -c | sort -nr | head -10 
