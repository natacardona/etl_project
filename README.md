# Proyecto ETL: Datos de Empleados

## Descripción

Este proyecto implementa un proceso **ETL (Extract, Transform, Load)** donde se extraen datos de un archivo **CSV**, se transforman y se cargan en una base de datos **PostgreSQL**. El proceso está automatizado con un script en Python y se utiliza **Docker Compose** para orquestar los contenedores de la base de datos y la aplicación Python.

---

## Datos de Muestra

El archivo `sample_data.csv` contiene los siguientes campos:

| Campo              | Descripción                                   |
|--------------------|-----------------------------------------------|
| `nombre`           | Nombre del empleado                          |
| `apellido`         | Apellido del empleado                        |
| `fecha_contratacion` | Fecha de contratación                      |
| `salario`          | Salario del empleado                         |
| `departamento`     | Nombre del departamento                      |

### Ejemplo de datos:

```csv
nombre,apellido,fecha_contratacion,salario,departamento
Juan,Pérez,2020-01-15,30000,Ventas
María,González,2019-05-20,35000,Marketing
Carlos,Rodríguez,2021-03-10,28000,Ventas
Ana,Martínez,2018-11-01,40000,Recursos Humanos
Luis,Sánchez,2022-07-05,32000,Marketing
