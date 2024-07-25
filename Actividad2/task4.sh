#!/bin/bash

# Variables

read -p "Ingrese el nombre de usuario de github: " github_user

date=$(date +"%d-%m-%y")
archivo_salida="saludos.log"

id=$(curl -s https://api.github.com/users/$github_user | jq -r '.id')


created=$(curl -s https://api.github.com/users/$github_user | jq -r '.created_at' | cut -d"T" -f 1)
# cut -d "T" -f1 : Extrae el primer campo de la fecha de creacion, el delimitador es T

# echo "Hola $github_user. ID:$id. Cuenta fue creada en: $created" > $archivo_salida

mkdir -p /tmp/$date
# -p : crea directorios padres si no existen
# si no se pone -p, y el directorio padre no existe, se genera un error

echo "Hola $github_user. ID:$id. Cuenta fue creada en: $created" > /tmp/$date/$archivo_salida


