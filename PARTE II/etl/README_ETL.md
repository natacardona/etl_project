# ETL Project

Este proyecto contiene un proceso ETL (Extract, Transform, Load) diseñado para automatizar el procesamiento de datos utilizando contenedores Docker.

## Estructura del proyecto

- `etl/`
  - `Dockerfile`: Define la configuración del contenedor Docker para el script ETL.
  - `etl_script.py`: Script principal que realiza el proceso ETL.
  - `requirements.txt`: Lista de dependencias necesarias para el ETL.
  - `sample_data.csv`: Archivo de muestra con datos de entrada para pruebas.
- `docker-compose.yml`: Archivo para configurar y orquestar servicios Docker.
- `README.md`: Documentación del proyecto.

## **Archivos**

- **`etl_script.py`**: Script Python que ejecuta el proceso ETL.
- **`sample_data.csv`**: Archivo CSV con los datos de ejemplo.
- **`requirements.txt`**: Lista de dependencias de Python.

## Requisitos previos

# Asegúrate de tener instalados los siguientes programas:

- [Docker](https://www.docker.com/) (versión 20.10 o superior recomendada)
- [Docker Compose](https://docs.docker.com/compose/) (versión 1.29 o superior recomendada)

## **NOTA**

### 1. Instalar Dependencias
Si necesitas ejecutar el script Python fuera de Docker, instala las dependencias manualmente:
```bash
pip install -r requirements.txt

## **Ejecución del Proyecto**

### 1. Clonar el Repositorio
```bash
git clone <url-del-repositorio>
cd etl_project
```

### 2. Ejecutar el Script
Si usas Docker, el script se ejecuta automáticamente al iniciar los contenedores. Para ejecutarlo manualmente:

```bash

python etl_script.py
```

## 2. Iniciar los Contenedores con Docker Compose
```bash
docker-compose up --build
```

## 3. Detener los Contenedores
```bash
docker-compose down
```

## Resultado
Los datos del archivo CSV se cargan en la tabla empleados de la base de datos PostgreSQL.
Consulta los datos en la base de datos:

```bash
docker exec -it postgres_db psql -U etl_user -d etl_db -c "SELECT * FROM empleados;"
```