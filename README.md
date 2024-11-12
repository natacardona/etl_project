Estructura del proyecto
etl/
Dockerfile: Define la configuración del contenedor Docker para el script ETL.
etl_script.py: Script principal que realiza el proceso ETL.
requirements.txt: Lista de dependencias necesarias para el ETL.
sample_data.csv: Archivo de muestra con datos de entrada para pruebas.
docker-compose.yml: Archivo para configurar y orquestar servicios Docker.
init.sql: Script SQL para inicializar una base de datos (opcional).
queries.sql: Consultas SQL para interactuar con la base de datos.
README.md: Documentación del proyecto.
Requisitos previos
Asegúrate de tener instalados los siguientes programas en tu máquina:

Docker (versión 20.10 o superior recomendada)
Docker Compose (versión 1.29 o superior recomendada)
Para verificar si tienes Docker y Docker Compose instalados, ejecuta:

bash
Copy code
docker --version
docker-compose --version
Instalación y configuración
Clona este repositorio en tu máquina local:

bash
Copy code
git clone <URL_DEL_REPOSITORIO>
cd <NOMBRE_DEL_REPOSITORIO>
Construye la imagen Docker definida en el Dockerfile:

bash
Copy code
docker-compose build
Levanta los servicios definidos en docker-compose.yml:

bash
Copy code
docker-compose up
Esto lanzará el contenedor con el script ETL y cualquier servicio adicional configurado en docker-compose.yml.

(Opcional) Si deseas ejecutar comandos dentro del contenedor, abre una terminal interactiva:

bash
Copy code
docker exec -it <NOMBRE_DEL_CONTENEDOR> /bin/bash
Puedes reemplazar <NOMBRE_DEL_CONTENEDOR> con el nombre especificado en el archivo docker-compose.yml.

Uso del proyecto
El script etl_script.py procesará automáticamente los datos de sample_data.csv cuando el contenedor se inicie.
Verifica los resultados en la salida de los logs del contenedor o en la base de datos configurada.
Detener los servicios
Para detener y eliminar los contenedores:

bash
Copy code
docker-compose down
Esto también limpiará cualquier red creada durante la ejecución.