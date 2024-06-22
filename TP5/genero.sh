#!/bin/bash

read -p "Ingrese un nombre para saber el sexo (Femenino o Masculino): " nombre
response=$(curl -s https://api.genderize.io/?name=$nombre)
genero=$(echo "$response" | jq -r '.gender')
if test $genero = "male"; 
		then echo "$nombre : probablemente el sexo es Masculino"
	elif test $genero = "female";
		then echo "$nombre : probablemente el sexo es Femenino"
	else echo "Nombre no válido."
fi