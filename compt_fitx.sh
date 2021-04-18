#!/bin/bash
clear
echo -n "Indica el camí complet del directori: "
read dir
compte=0
for fitxer in $dir/*
do
	if [[ -s $fitxer ]] &&  [[ -x $fitxer ]]  # -s és veritat si el fitxer és més gran de 0 bytes. -x veritat si el fitxer és executable per l'usuari propietari
	then                                      
		gzip $fitxer
		(( compte++ ))	
	fi
done
echo "Número de fitxers comprimits: $compte"
exit 1
