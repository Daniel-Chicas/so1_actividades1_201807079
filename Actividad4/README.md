#Instalación del servicio de saludo y fecha actual

Este es un tutorial para instalar el servicio de saludo y fecha, este se ejecuta utilizando un script.

## Paso 1: Crea el script
Crea un archivo de script con el siguiente contenido:

---
\#!/bin/bash
echo "Hola, soy Daniel Chicas, mi carné es 201807079. Hoy es: $(date +%d/%m/%Y)"

---
Guarda el archivo como saludo.sh en una ubicación accesible. En este ejemplo, se usará /usr/local/bin.

## Paso 2: Crea el archivo de unidad de systemd
Abre un editor de texto y crea un nuevo archivo llamado saludo.service con el siguiente contenido:

--- 

[Unit]
Description=Saludo diario

[Service]
Type=simple
ExecStart=/home/daniel/Escritorio/so1_actividades_201807079/Actividad4/saludo.sh
User=root

[Install]
WantedBy=multi-user.target

--- 

##### Es importante aclarar que en ExecStart debes poner la ruta donde tienes guardado el script.sh

Guarda el archivo saludo.service en /etc/systemd/system/.

## Paso 3: Activa el servicio
Activa el servicio y asegúrate de que se ejecute en el arranque con los siguientes comandos:

--- 
sudo systemctl daemon-reload
sudo systemctl enable saludo.service
sudo systemctl start saludo.service

---

<p aligne="center">
	<image src="./comandos.png">
</p>

El comando daemon-reload recarga los archivos de configuración de systemd para incluir el nuevo archivo saludo.service. enable establece que el servicio se iniciará en el arranque y start inicia el servicio de inmediato.

## Paso 4: Verifica que el servicio esté funcionando
Verifica que el servicio se esté ejecutando con el siguiente comando:

---
sudo systemctl status saludo.service

---

Deberías ver una salida similar a esta:

<p aligne="center">
	<image src="./servicio.png">
</p>

Con esto, el servicio ya está configurado y funcionando correctamente.
