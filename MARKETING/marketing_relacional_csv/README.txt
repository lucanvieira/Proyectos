# BASE DE DATOS RELACIONAL DE MARKETING

Archivos CSV generados el: 2026-01-24 18:04:29

## ARCHIVOS GENERADOS:

1. clientes.csv - Información demográfica de clientes (2,205 registros)
2. productos.csv - Catálogo de productos (6 registros)
3. campanas.csv - Campañas de marketing (5 registros)
4. respuesta_campanas.csv - Respuestas a campañas (660 registros)
5. interacciones_web.csv - Interacciones web (11,702 registros)
6. compras.csv - Transacciones de compra (21,259 registros)
7. resumen_cliente.csv - Resumen y segmentación (2,205 registros)

## RELACIONES PRINCIPALES:

- clientes.customer_id -> compras.customer_id
- clientes.customer_id -> respuesta_campanas.customer_id
- productos.product_id -> compras.product_id
- campanas.campaign_id -> respuesta_campanas.campaign_id
- clientes.customer_id -> interacciones_web.customer_id
- clientes.customer_id -> resumen_cliente.customer_id

## EJEMPLO DE CONSULTA SQL:

SELECT c.customer_id, c.education_level, c.income,
       SUM(co.total_amount) as total_gastado,
       COUNT(co.purchase_id) as total_compras
FROM clientes c
JOIN compras co ON c.customer_id = co.customer_id
GROUP BY c.customer_id, c.education_level, c.income
ORDER BY total_gastado DESC
LIMIT 10;

## USO EN PYTHON:

import pandas as pd
clientes = pd.read_csv('marketing_relacional_csv/clientes.csv')
compras = pd.read_csv('marketing_relacional_csv/compras.csv')
productos = pd.read_csv('marketing_relacional_csv/productos.csv')

# Unir tablas
df_analisis = pd.merge(compras, clientes, on='customer_id')
df_analisis = pd.merge(df_analisis, productos, on='product_id')
