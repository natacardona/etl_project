import csv
import psycopg2
from psycopg2.extras import execute_values

# Database connection parameters
DB_HOST = "db"
DB_NAME = "etl_db"
DB_USER = "etl_user"
DB_PASSWORD = "etl_password"

def create_table(connection):
    with connection.cursor() as cursor:
        cursor.execute("""
            CREATE TABLE IF NOT EXISTS empleados (
                id SERIAL PRIMARY KEY,
                nombre VARCHAR(50),
                apellido VARCHAR(50),
                fecha_contratacion DATE,
                salario DECIMAL(10, 2),
                departamento VARCHAR(50)
            );
        """)
        connection.commit()

def load_csv_to_db(connection, csv_file):
    with open(csv_file, 'r') as file:
        reader = csv.reader(file)
        headers = next(reader)
        rows = list(reader)

    with connection.cursor() as cursor:
        execute_values(
            cursor,
            """
            INSERT INTO empleados (nombre, apellido, fecha_contratacion, salario, departamento)
            VALUES %s
            """,
            rows
        )
        connection.commit()

def main():
    connection = psycopg2.connect(
        host=DB_HOST,
        dbname=DB_NAME,
        user=DB_USER,
        password=DB_PASSWORD
    )
    try:
        print("Creating table...")
        create_table(connection)

        print("Loading data from CSV...")
        load_csv_to_db(connection, "sample_data.csv")

        print("ETL process completed successfully!")
    finally:
        connection.close()

if __name__ == "__main__":
    main()
