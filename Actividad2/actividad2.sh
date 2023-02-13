#!/bin/bash
 
echo "Ingresa un nombre de usuario de GitHub: "
read GITHUB_USER
 
respuesta=$(curl -s -f -S -k https://api.github.com/users/$GITHUB_USER)
 
id=$(echo $respuesta | jq '.id')
fecha_creacion=$(echo $respuesta | jq '.created_at' | tr -d '"')
 
msg="Hola $GITHUB_USER. User ID: $id. Cuenta fue creada el: $fecha_creacion."
echo $msg


DiaActual=$(date +"%Y-%m-%d")
log_file="/tmp/$DiaActual/saludos.log"

mkdir -p $(dirname $log_file)
echo $msg >> $log_file