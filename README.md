# Proyecto ETL: Datos de Empleados

## **Descripción**

Este proyecto implementa un proceso **ETL (Extract, Transform, Load)** que lee datos de un archivo **CSV**, los procesa y los carga en una base de datos **PostgreSQL**. 

El objetivo es mostrar cómo se pueden automatizar procesos ETL utilizando un **script en Python**. Para facilitar la configuración del entorno de desarrollo y la ejecución del script, se utilizan contenedores Docker. Los contenedores son administrados mediante **Docker Compose**.

---

## **Requisitos Previos**

Asegúrate de tener instalados los siguientes programas en tu máquina:
1. **Docker**: Herramienta para contenedores (descargar desde [Docker](https://www.docker.com/)).
2. **Docker Compose**: Extensión para definir y ejecutar múltiples contenedores (ya incluida en Docker Desktop).

---

## **Estructura del Proyecto**

```plaintext
etl_project/
├── docker-compose.yml         # Configuración de los servicios (PostgreSQL y Python)
├── etl/
│   ├── etl_script.py          # Script Python que ejecuta el proceso ETL
│   ├── sample_data.csv        # Archivo CSV con los datos de ejemplo
│   ├── requirements.txt       # Dependencias del script Python
├── README.md                  # Instrucciones de configuración y ejecución
