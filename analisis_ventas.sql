-- Antes de comenzar a responder a las preguntas de negocio que se nos solicita debemos entender las tablas, como están compuestas y como se relacionan.

SELECT * FROM ositofeliz.order_items;

-- Obtener el número total de registros en la tabla
SELECT COUNT(*) FROM order_items;

-- Obtener el rango de fechas de los pedidos
SELECT MIN(created_at) AS 'Fecha inicial', MAX(created_at) AS 'Fecha final' FROM order_items;

-- Obtener el número de pedidos únicos
SELECT COUNT(DISTINCT order_id) FROM order_items;

-- Obtener el número de productos únicos
SELECT COUNT(DISTINCT product_id) FROM order_items;

-- Obtener estadísticas descriptivas para las columnas numéricas
SELECT AVG(price_usd) AS 'Precio promedio', 
       MIN(price_usd) AS 'Precio mínimo', 
       MAX(price_usd) AS 'Precio máximo',
       AVG(cogs_usd) AS 'Costo promedio', 
       MIN(cogs_usd) AS 'Costo mínimo', 
       MAX(cogs_usd) AS 'Costo máximo'
FROM order_items;

-- Obtener el número total de registros en la tabla
SELECT COUNT(*) FROM orders;

-- Obtener el rango de fechas de los pedidos
SELECT MIN(created_at) AS 'Fecha inicial', MAX(created_at) AS 'Fecha final' FROM orders;

-- Obtener el número de pedidos únicos
SELECT COUNT(DISTINCT order_id) FROM orders;

-- Obtener el número de usuarios únicos
SELECT COUNT(DISTINCT user_id) FROM orders;

-- Obtener estadísticas descriptivas para las columnas numéricas
SELECT AVG(price_usd) AS 'Precio promedio', 
       MIN(price_usd) AS 'Precio mínimo', 
       MAX(price_usd) AS 'Precio máximo',
       AVG(cogs_usd) AS 'Costo promedio', 
       MIN(cogs_usd) AS 'Costo mínimo', 
       MAX(cogs_usd) AS 'Costo máximo'
FROM orders;

-- Obtener el número total de registros en la tabla
SELECT COUNT(*) FROM products;

-- Obtener el rango de fechas de creación de los productos
SELECT MIN(created_at) AS 'Fecha inicial', MAX(created_at) AS 'Fecha final' FROM products;

-- Obtener el número de productos únicos
SELECT COUNT(DISTINCT product_id) FROM products;

-- Obtener una lista de todos los nombres de productos
SELECT product_name FROM products;

-- Obtener el número total de registros en la tabla
SELECT COUNT(*) FROM website_sessions;

-- Obtener el rango de fechas de las sesiones
SELECT MIN(created_at) AS 'Fecha inicial', MAX(created_at) AS 'Fecha final' FROM website_sessions;

-- Obtener el número de sesiones únicas
SELECT COUNT(DISTINCT website_session_id) FROM website_sessions;

-- Obtener el número de usuarios únicos
SELECT COUNT(DISTINCT user_id) FROM website_sessions;

-- Obtener una lista de todas las fuentes (utm_source)
SELECT DISTINCT utm_source FROM website_sessions;

-- Obtener una lista de todas las campañas (utm_campaign)
SELECT DISTINCT utm_campaign FROM website_sessions;

-- Obtener una lista de todos los tipos de dispositivos (device_type)
SELECT DISTINCT device_type FROM website_sessions;

-- Si cada pedido de la tabla de pedidos tiene más de 1 elemento por eso se relaciona con la tabla de order_item. Entendemos se relaciona con la tabla items_purchase.


# Ejecución

-- Análisis Ventas

-- 1. Queremos saber cuáles son las ventas por año y por mes en términos brutos y luego el margen absoluto.
SELECT
    EXTRACT(YEAR_MONTH FROM created_at) AS month_year,
    FORMAT(SUM(items_purchased * price_usd), 2, 'de_DE') AS ventas_brutas,
    FORMAT(SUM(items_purchased * cogs_usd), 2, 'de_DE') AS costo_de_ventas,
    FORMAT(SUM(items_purchased * (price_usd - cogs_usd)), 2, 'de_DE') AS margen_absoluto
FROM ositofeliz.orders
GROUP BY month_year
ORDER BY month_year;

-- 2. ¿Cuáles son las ventas brutas medias de cada mes y año? Devuelve los TOP 10. ¿Qué puedes observar?
SELECT
    EXTRACT(YEAR_MONTH FROM created_at) AS month_year,
    FORMAT(AVG(items_purchased * price_usd), 2, 'de_DE') AS ventas_brutas
FROM ositofeliz.orders
GROUP BY month_year
ORDER BY ventas_brutas DESC
LIMIT 10;

-- 3. ¿Cuál es el producto que más vende?
SELECT
    p.product_name,
    FORMAT(SUM(o.items_purchased * o.price_usd), 2, 'de_DE') AS ventas_brutas
FROM ositofeliz.orders o
LEFT JOIN ositofeliz.order_items oi ON o.order_id = oi.order_id
LEFT JOIN ositofeliz.products p ON p.product_id = oi.product_id
GROUP BY product_name
ORDER BY SUM(items_purchased * o.price_usd) DESC
LIMIT 1;

-- 4. ¿Cuál es el producto que deja más margen?
SELECT
    p.product_name,
    FORMAT(SUM(o.items_purchased * (o.price_usd - o.cogs_usd)), 2, 'de_DE') AS margen_absoluto
FROM ositofeliz.orders o
LEFT JOIN ositofeliz.order_items oi ON o.order_id = oi.order_id
LEFT JOIN ositofeliz.products p ON p.product_id = oi.product_id
GROUP BY product_name
ORDER BY SUM(o.items_purchased * (o.price_usd - o.cogs_usd)) DESC
LIMIT 1;

-- 5. ¿Podemos saber cuál es la fecha de lanzamiento de cada producto?
SELECT
    MIN(o.created_at) AS fecha_minima,
    product_name
FROM ositofeliz.orders o
LEFT JOIN ositofeliz.order_items oi ON oi.order_id = o.order_id
LEFT JOIN ositofeliz.products p ON p.product_id = oi.product_id
GROUP BY product_name;

-- 6. Calcula las ventas netas por año, así como el margen numérico y porcentual de cada producto, y ordénalo por producto.
SELECT
    YEAR(o.created_at) AS año,
    product_name,
    FORMAT(SUM(items_purchased * o.price_usd), 2, 'de_DE') AS ventas_brutas,
    FORMAT(SUM(items_purchased * (o.price_usd - o.cogs_usd)), 2, 'de_DE') AS margen_absoluto,
    FORMAT(SUM(items_purchased * (o.price_usd - o.cogs_usd)) / SUM(items_purchased * o.price_usd), 2, 'de_DE') AS margen_porcentual
FROM ositofeliz.orders o
LEFT JOIN ositofeliz.order_items oi ON oi.order_id = o.order_id
LEFT JOIN ositofeliz.products p ON p.product_id = oi.product_id
GROUP BY año, product_name;

-- 7. ¿Cuáles son los meses de ventas brutas más fuertes?
SELECT
    MONTH(created_at) AS mes,
    FORMAT(SUM(price_usd), 2) AS ventas_brutas
FROM ositofeliz.orders
GROUP BY mes
ORDER BY SUM(price_usd) DESC;

-- Análisis WEB

-- 8. ¿Cuáles son los ads o contenidos que han atraído más sesiones?
SELECT
    utm_content,
    FORMAT(COUNT(website_session_id), 2) AS sesiones
FROM ositofeliz.website_sessions
GROUP BY utm_content
ORDER BY COUNT(website_session_id) DESC;

-- 9. Es lo mismo sesiones que usuarios? ¿Cuál es la cantidad de usuarios individuales?
SELECT
    utm_content,
    FORMAT(COUNT(website_session_id), 2) AS sesiones,
    FORMAT(COUNT(DISTINCT user_id), 2) AS usuarios
FROM ositofeliz.website_sessions
GROUP BY utm_content
ORDER BY COUNT(website_session_id) DESC;

-- 10. ¿Y por source o fuente? Cantidad de usuarios y sesiones?
SELECT
    utm_source,
    FORMAT(COUNT(website_session_id), 2) AS sesiones,
    FORMAT(COUNT(DISTINCT user_id), 2) AS usuarios
FROM ositofeliz.website_sessions
GROUP BY utm_source
ORDER BY COUNT(website_session_id) DESC;

-- 11. ¿Cuáles son las sources o fuentes que han dado más ventas?
SELECT
    utm_source,
    FORMAT(SUM(price_usd), 2) AS ventas_brutas
FROM ositofeliz.website_sessions s
LEFT JOIN ositofeliz.orders o ON o.website_session_id = s.website_session_id
GROUP BY utm_source
ORDER BY SUM(price_usd) DESC;

-- 12. ¿Cuáles son los meses que han atraído más tráfico?
SELECT
    MONTH(created_at) AS mes,
    FORMAT(COUNT(website_session_id), 2) AS sesiones
FROM ositofeliz.website_sessions
GROUP BY mes
ORDER BY COUNT(website_session_id) DESC;

-- 13. Ya que vimos que el mes de noviembre es el que ha tenido más tráfico, podrías ver de ese mes la cantidad de sesiones que han venido por móvil y la cantidad que han venido por ordenador?
SELECT
    device_type,
    FORMAT(COUNT(website_session_id), 2) AS sesiones
FROM ositofeliz.website_sessions
WHERE MONTH(created_at) = 11
GROUP BY device_type
ORDER BY COUNT(website_session_id) DESC;

-- 14. ¿Qué campañas son las que han dado más margen por productos?
SELECT
    utm_Campaign,
    product_name,
    FORMAT(SUM(o.price_usd - o.cogs_usd), 2) AS margen
FROM ositofeliz.orders o
LEFT JOIN ositofeliz.order_items oi ON oi.order_id = o.order_id
LEFT JOIN ositofeliz.products p ON p.product_id = oi.product_id
LEFT JOIN ositofeliz.website_sessions s ON o.website_session_id = s.website_session_id
WHERE utm_Campaign IS NOT NULL
GROUP BY utm_Campaign, product_name;
