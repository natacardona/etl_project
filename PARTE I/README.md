# Parte I: Gestión de Bases de Datos

## **Descripción**

Esta parte del proyecto incluye el trabajo con la base de datos PostgreSQL para realizar las siguientes actividades:
1. Crear y poblar tablas con datos de prueba.
2. Ejecutar consultas SQL específicas para resolver los problemas planteados.
3. Implementar triggers e índices para mejorar la funcionalidad y rendimiento.
4. Proporcionar un dump completo de la base de datos con todos los datos y objetos creados.

---

## **Requisitos Previos**

Asegúrate de tener los siguientes elementos configurados en tu entorno:
1. **Docker** instalado en tu máquina. Si no lo tienes, puedes instalarlo desde [Docker](https://www.docker.com/).
2. Contenedor PostgreSQL configurado según el archivo `docker-compose.yml`.

---

## **Estructura de Archivos**

- **`init.sql`**:
  - Contiene los scripts SQL para:
    - Crear las tablas necesarias (`empleados`, `departamentos`, `productos`, etc.).
    - Insertar datos de prueba en las tablas.
  
- **`queries.sql`**:
  - Incluye todas las consultas necesarias para resolver los problemas planteados:
    - Inserciones.
    - Actualizaciones.
    - Consultas complejas.
    - Implementación de triggers e índices.

- **`dump.sql`**:
  - Dump completo de la base de datos PostgreSQL, que incluye:
    - Esquema de la base de datos.
    - Datos de las tablas.
    - Triggers e índices.

---

## **Instrucciones**

### **1. Inicializar la Base de Datos**
Si quieres inicializar la base de datos desde cero con las tablas y datos de prueba, utiliza el archivo `init.sql`. Sigue estos pasos:

# 1. Asegúrate de que el contenedor PostgreSQL esté corriendo:
   ```bash
   docker-compose up -d
    ```
## Ejecuta el script init.sql en el contenedor PostgreSQL 
 
 ```bash
docker exec -i postgres_db psql -U etl_user -d etl_db < db/init.sql
 ```

 o restaura elarchivo en un manejador de datos de preferencia ej: dBeaver

# 2. Ejecutar Consultas SQL
Para ejecutar las consultas requeridas en la prueba, utiliza el archivo queries.sql:

Ejecuta el archivo de consultas en el contenedor PostgreSQL:

```bash
docker exec -i postgres_db psql -U etl_user -d etl_db < db/queries.sql
```
Si prefieres ejecutar consultas manualmente, accede al contenedor PostgreSQL:


```bash
docker exec -it postgres_db psql -U etl_user -d etl_db
```
Luego, puedes escribir las consultas directamente en la terminal interactiva.

# 3. Restaurar la Base de Datos desde un Dump
Si prefieres cargar la base de datos completa desde el archivo dump.sql, utiliza el siguiente comando:

```bash
docker exec -i postgres_db psql -U etl_user -d etl_db < db/dump.sql
```
## Esto restaurará:

Todas las tablas.
Datos de prueba.
Triggers e índices.
