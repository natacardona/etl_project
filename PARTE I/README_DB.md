# Parte I: Gestión de Bases de Datos

## **Descripción**

Esta parte del proyecto consiste en trabajar con una base de datos PostgreSQL para realizar tareas específicas relacionadas con la creación, manipulación y optimización de datos. Las actividades realizadas incluyen:

1. Crear la base de datos y poblarla con datos iniciales.
2. Ejecutar consultas SQL específicas para resolver problemas planteados.
3. Implementar triggers, índices y funciones según los requisitos.

---

## **Requisitos Previos**

1. **PostgreSQL** instalado en tu sistema. Puedes descargarlo desde [PostgreSQL Official Website](https://www.postgresql.org/).
2. Un cliente de base de datos como:
   - `psql` (terminal de PostgreSQL)
   - [DBeaver](https://dbeaver.io/) (opcional para uso gráfico).
3. Scripts del proyecto:
   - `DATOS -init.sql` imput inicial para crear las tablas y las inserciones.
   - `init.sql` output Dump de la base de datos **sampledata** con todos los datos y objetos creados.
   - `queries.sql` para ejecutar las consultas requeridas despues de restaurar el dump.

---

## **Estructura de Archivos**

- **`init.sql`**:
  - Contiene los scripts necesarios para:
    - Crear las tablas requeridas (`empleados`, `productos`, `departamentos`, etc.).
    - Insertar datos iniciales de prueba.

- **`queries.sql`**:
  - Incluye todas las consultas necesarias para:
    - Inserciones y actualizaciones.
    - Implementación de triggers e índices.
    - Consultas avanzadas y funciones.

---

## **Instrucciones de Instalación y Ejecución**

### **1. Crear la Base de Datos**

Primero, crea una nueva base de datos llamada `sampledata`. Esto se puede hacer desde la terminal de PostgreSQL o desde un cliente gráfico como DBeaver. Si utilizas `psql`, ejecuta el siguiente comando:

```sql
CREATE DATABASE sampledata;
```

### **2. Ejecutar el Script de Creación e Inserción**
Una vez creada la base de datos, ejecuta el archivo init.sql para crear las tablas e insertar los datos iniciales. Esto se puede hacer desde la terminal o mediante un cliente gráfico.

Con psql:

```bash
psql -U <usuario> -d sampledata -f init.sql
```
Reemplaza <usuario> con el nombre de usuario que usas en PostgreSQL.

Si usas un cliente gráfico como DBeaver, simplemente importa el archivo init.sql y ejecútalo.

despúes de crear la base de datos dar clic derecho en tools o herramientas, luego execute script y en la opción imput unicar el archivo */etl_projectPARTE I/DATOS -init.sql* y luego iniciar, este archivo contiene el esquema de la base de datos y su estructura 

### **3. Ejecutar las Consultas**
Después de que las tablas y los datos estén listos, ejecuta el archivo **queries.sql** para realizar las operaciones requeridas. Esto incluye:

  - Inserciones y actualizaciones.
  - Creación de triggers.
  - Creación de índices.
  - Consultas avanzadas con filtros y funciones de ventana.

```bash
psql -U <usuario> -d sampledata -f queries.sql
```

Desde un cliente gráfico, abre y ejecuta el archivo queries.sql directamente.

## Notas Adicionales
Todos los scripts (init.sql y queries.sql) están diseñados para ser ejecutados en un entorno PostgreSQL estándar.
Asegúrate de que tienes permisos suficientes para crear tablas, índices y funciones en la base de datos.
Verifica los resultados de las consultas para validar su correcta ejecución.

## Resultados Esperados
Después de completar los pasos anteriores, deberías tener:

1. Una base de datos sampledata completamente inicializada con datos de prueba.
2. Consultas exitosas que cumplen los requisitos planteados, incluyendo:

- Inserciones y actualizaciones.
- Automatización mediante triggers.
- Optimización mediante índices.
- Resultados de consultas avanzadas utilizando funciones de ventana y filtros.