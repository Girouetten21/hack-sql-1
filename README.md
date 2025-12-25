# 🗄️ Fundamentos de SQL y PostgreSQL (Hack 1)

Este repositorio contiene los ejercicios prácticos ("Hacks") realizados en el módulo de Bases de Datos de la **Certificación Fullstack de Oplesk Academy**. El enfoque principal fue el lenguaje SQL, utilizando **PostgreSQL** como motor de base de datos relacional.

---

## 🎯 Habilidades y Conceptos SQL Demostrados

Los ejercicios se diseñaron para cubrir las operaciones esenciales para la gestión y consulta de datos en un entorno de producción.

### 1. Definición y Manipulación de Datos (DDL & DML)

* **DDL (Data Definition Language):** Creación de la estructura de la base de datos.
    * Uso de `CREATE TABLE` para definir esquemas, tipos de datos y restricciones (ej. `NOT NULL`, `UNIQUE`).
    * Definición de Claves Primarias (`PRIMARY KEY`) y Foráneas (`FOREIGN KEY`) para establecer relaciones.
* **DML (Data Manipulation Language):** Gestión de los registros.
    * Implementación de las operaciones **CRUD**: `INSERT`, `SELECT`, `UPDATE` y `DELETE`.

### 2. Consulta y Recuperación de Datos

* **Sentencias SELECT:** Uso de `WHERE` para filtrado, `ORDER BY` para ordenar resultados y `LIMIT` para paginación.
* **Funciones de Agregación:** Uso de `COUNT`, `SUM`, `AVG`, `MIN` y `MAX` para obtener resúmenes de datos.
* **Agrupación:** Aplicación de `GROUP BY` y `HAVING` para análisis y reporte.

### 3. Relaciones y Joins

* **Modelado Relacional:** Comprensión de las relaciones uno-a-muchos y muchos-a-muchos. 
* **JOINS:** Práctica intensiva con `INNER JOIN`, `LEFT JOIN` y `RIGHT JOIN` para combinar datos de múltiples tablas de manera eficiente.

---

## 📂 Contenido del Repositorio

El repositorio está compuesto por archivos SQL (`.sql`) que contienen las sentencias necesarias para crear y operar la base de datos de práctica.

| Archivo / Carpeta | Enfoque Principal |
| :--- | :--- |
| `01_schema_creation.sql` | Sentencias DDL para la creación de tablas y definición de restricciones. |
| `02_data_insertion.sql` | Sentencias DML (`INSERT INTO`) para poblar las tablas con datos de prueba. |
| `03_crud_practice.sql` | Ejercicios básicos de `SELECT`, `UPDATE` y `DELETE` con condiciones simples. |
| `04_advanced_queries.sql` | Consultas complejas que involucran `JOINs`, agrupaciones (`GROUP BY`) y funciones de agregación. |

---

*El dominio de SQL y PostgreSQL es una habilidad crítica que se aplicó directamente en el proyecto CRUD Fullstack con Python y React.*
