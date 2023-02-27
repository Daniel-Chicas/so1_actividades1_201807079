## Daniel Estuardo Chicas Carías - 201807079
# SOLUCIÓN AL ERROR

No se encontró el archivo nginx.conf y este nos ayuda a manejar todo el control de páginas de React. En este archivo se añade un bloque llamado "location" el cual se utiliza para redirigir cualquier solicitud para una URL no especificada a la página principal de la aplicación, que se carga en el archivo index.html.

Luego este archivo de configuración se llama en el nginx.Dockerfile para que se pueda manejar la redirección de páginas dentro de la aplicación y no genere un error 404.