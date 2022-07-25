#!/bin/bash


cat $1 | grep -oE "[a-zA-Z]{4,}" | sort | uniq -c | sort -nr | head -10 
