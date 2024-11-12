# ETL Project

Este proyecto contiene un proceso ETL (Extract, Transform, Load) diseñado para automatizar el procesamiento de datos utilizando contenedores Docker.

## Estructura del proyecto

- `etl/`
  - `Dockerfile`: Define la configuración del contenedor Docker para el script ETL.
  - `etl_script.py`: Script principal que realiza el proceso ETL.
  - `requirements.txt`: Lista de dependencias necesarias para el ETL.
  - `sample_data.csv`: Archivo de muestra con datos de entrada para pruebas.
- `docker-compose.yml`: Archivo para configurar y orquestar servicios Docker.
- `init.sql`: Script SQL para inicializar una base de datos (opcional).
- `queries.sql`: Consultas SQL para interactuar con la base de datos.
- `README.md`: Documentación del proyecto.

## Requisitos previos

Asegúrate de tener instalados los siguientes programas:

- [Docker](https://www.docker.com/) (versión 20.10 o superior recomendada)
- [Docker Compose](https://docs.docker.com/compose/) (versión 1.29 o superior recomendada)

Verifica tu instalación con los comandos:

```bash
docker --version
docker-compose --version
```
## Instalación y configuración
### 1.Clona este repositorio en tu máquina local:

```bash
git clone <URL_DEL_REPOSITORIO>
cd <NOMBRE_DEL_REPOSITORIO>
```
### 2.Construye la imagen Docker especificada en el Dockerfile:

```bash
docker-compose build
```

### 3.Inicia los servicios definidos en el archivo docker-compose.yml:

```bash
docker-compose up
```
Esto iniciará el contenedor con el script ETL y cualquier servicio adicional configurado.

## 4.Accede al contenedor (opcional):

Si necesitas interactuar con el contenedor, utiliza:

```bash
docker exec -it <NOMBRE_DEL_CONTENEDOR> /bin/bash
```
Reemplaza <NOMBRE_DEL_CONTENEDOR> con el nombre especificado en docker-compose.yml.

## Uso del proyecto
Al iniciar el contenedor, el **script etl_script.py** procesará automáticamente los datos de entrada ubicados en **sample_data.csv**.
Los resultados estarán disponibles en la salida del contenedor o en la base de datos configurada.

## Detener los servicios
Para detener y eliminar los contenedores y recursos asociados, ejecuta:

```bash
docker-compose down
```
Personalización
Modifica el script **etl_script.py** según las necesidades de tu proceso ETL.

Actualiza las dependencias en **requirements.txt** si es necesario y reconstruye la imagen con:

```bash
docker-compose build
```
