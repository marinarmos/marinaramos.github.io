# Proyecto Ecommerce

## Glosario del Proyecto

**Ventas brutas**: Es el total facturado sin restar ni excluir ningún gasto.

- Fórmula en este proyecto: `SUM(price_usd * items_purchased)`

**Margen de ganancia sobre ventas (ventas netas)**: Indica la rentabilidad de un producto, servicio o negocio. Es expresado en porcentaje; mientras más alto sea el número, más rentable es el negocio. Se calcula como la diferencia entre las ventas de un producto y su costo.

- Fórmula en este proyecto: `SUM((price_usd - cogs_usd) * items_purchased) / SUM(price_usd * items_purchased)`

**Margen Absoluto**: Es el margen en términos monetarios, no en porcentaje.

- Fórmula en este proyecto: `SUM((price_usd - cogs_usd) * items_purchased)`

**Campañas**: Conjunto de anuncios o anuncio para un período de tiempo determinado (Ejemplo: campaña de Black Friday, campaña de Navidad).

**Ads o anuncios**: Publicidad en marketing digital que se crea en internet.

**Sesiones**: La cantidad de veces que se ingresa a una página web, sin importar el usuario.

## El Cliente

Te han contratado para la empresa de ecommerce online llamada “ositofeliz” que se dedica a vender ositos de peluche super atractivos. Actualmente, cuenta con 4 modelos de peluches.

## El Problema

Como miembro del equipo de la startup, te va a tocar trabajar con el CEO, el director de marketing y el Gerente de la web para analizar ciertas métricas que queremos medir.

Tu objetivo será analizar la situación actual de la empresa, medir la conversión de la web y usar datos para entender las ventas e impacto de los productos.

## Esquema de Relaciones

![Esquema de relaciones](https://raw.githubusercontent.com/marinarmos/marinaramos.github.io/main/osito%20feliz%20diagrama.png)

## Crear Base de Datos y Tablas

### Los Datos

Base de datos `.sql`:
- [Descargar base de datos](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0c278049-c263-4752-9517-f0893880a27d/osito_feliz.7z)

### Análisis Previo

Antes de comenzar a responder a las preguntas de negocio que se nos solicita, debemos entender las tablas, cómo están compuestas y cómo se relacionan.

#### Puntos Detectados:

- Rango de tiempo de la tabla de pedidos.
- Cada pedido de la tabla de pedidos tiene más de 1 elemento, por eso se relaciona con la tabla `order_item`.
- Entendemos que se relaciona con la tabla `items_purchase`.

## Ejecución

### Análisis de Ventas

1. Queremos saber cuáles son las ventas por año y por mes en términos brutos y luego el margen absoluto.

2. ¿Cuáles son las ventas brutas medias de cada mes y año? Devuelve los TOP 3. ¿Qué puedes observar?

3. ¿Cuál es el producto que más vende en términos monetarios (Ventas brutas)?

4. ¿Cuál es el producto que deja más margen en términos monetarios?

5. ¿Podemos saber cuál es la fecha de lanzamiento de cada producto?

### Análisis de Tráfico Web

8. ¿Cuáles son los ads (anuncios) o contenidos que han atraído más sesiones?

9. ¿Es lo mismo sesiones que usuarios? ¿Cuál es la cantidad de usuarios individuales?

10. ¿Y por source o fuente? Cantidad de usuarios únicos y sesiones?

11. ¿Cuáles son las sources o fuentes que han dado más ventas?

12. ¿Cuáles son los meses que han atraído más tráfico?

13. Ya que vimos el mes que ha tenido más tráfico, ¿podrías ver de ese mes la cantidad de sesiones que han venido por móvil y la cantidad que han venido por ordenador?

14. ¿Qué campañas son las que han dado más margen por productos?

## Solución

## Solución

### Conclusiones del Proyecto Ecommerce

#### Análisis de Ventas

1. **Ventas por Año y Mes**:
   - Se identificaron las ventas brutas mensuales y anuales, permitiendo entender las fluctuaciones de ventas a lo largo del tiempo e identificar los meses más fuertes y los más débiles en términos de ingresos.

2. **Ventas Brutas Medias Mensuales y Anuales**:
   - Las ventas brutas medias se calcularon y se identificaron los meses con mayores ventas promedio, mostrando tendencias estacionales y ayudando a identificar los picos de demanda.

3. **Producto Más Vendido**:
   - Se identificó el producto con mayores ventas en términos monetarios, proporcionando información valiosa sobre cuáles productos tienen mayor aceptación en el mercado.

4. **Producto con Mayor Margen de Ganancia**:
   - Se determinó cuál producto deja más margen en términos monetarios, crucial para tomar decisiones sobre qué productos promocionar más intensamente.

5. **Fecha de Lanzamiento de los Productos**:
   - Se pudo determinar la fecha de lanzamiento de cada producto, útil para correlacionar los lanzamientos con las ventas y evaluar el éxito de los nuevos productos.

6. **Ventas Netas por Año y Margen**:
   - El cálculo de las ventas netas por año, así como el margen numérico y porcentual de cada producto, permitió evaluar la rentabilidad de cada producto y comparar su desempeño a lo largo del tiempo.

7. **Meses con Ventas Brutas Más Fuertes**:
   - Identificación de los meses con mayores ventas brutas, útil para planificar estrategias de marketing y manejo de inventarios.

#### Análisis de Tráfico Web

8. **Ads o Contenidos que Atraen Más Sesiones**:
   - Se analizaron los anuncios o contenidos que atrajeron más sesiones a la página web, ayudando a entender qué estrategias de marketing digital son más efectivas.

9. **Diferencia entre Sesiones y Usuarios**:
   - Se identificó la cantidad de usuarios individuales y se comparó con el número de sesiones, entendiendo la recurrencia de los usuarios y su comportamiento en la web.

10. **Source o Fuente de Usuarios y Sesiones**:
    - Se determinaron las fuentes que trajeron más usuarios y sesiones, clave para enfocar las estrategias de adquisición de usuarios.

11. **Sources o Fuentes que Generan Más Ventas**:
    - Identificación de las fuentes que generaron más ventas, proporcionando información sobre qué canales de marketing son más efectivos en términos de conversión.

12. **Meses que Atraen Más Tráfico**:
    - Se analizaron los meses con más tráfico web, ayudando a identificar patrones de tráfico y a planificar mejor las campañas de marketing.

13. **Dispositivos que Atraen Más Sesiones en el Mes con Más Tráfico**:
    - Análisis de la cantidad de sesiones provenientes de dispositivos móviles versus ordenadores en el mes con más tráfico, proporcionando información sobre el comportamiento del usuario y la necesidad de optimización móvil.

14. **Campañas que Generan Más Margen por Productos**:
    - Se identificaron las campañas que generan más margen por productos, ayudando a enfocar los esfuerzos de marketing en las campañas más rentables.
## Solución

### Conclusiones del Proyecto Ecommerce

#### Análisis de Ventas

1. **Ventas por Año y Mes**:
   - Se identificaron las ventas brutas mensuales y anuales, permitiendo entender las fluctuaciones de ventas a lo largo del tiempo e identificar los meses más fuertes y los más débiles en términos de ingresos.

2. **Ventas Brutas Medias Mensuales y Anuales**:
   - Las ventas brutas medias se calcularon y se identificaron los meses con mayores ventas promedio, mostrando tendencias estacionales y ayudando a identificar los picos de demanda.

3. **Producto Más Vendido**:
   - Se identificó el producto con mayores ventas en términos monetarios, proporcionando información valiosa sobre cuáles productos tienen mayor aceptación en el mercado.

4. **Producto con Mayor Margen de Ganancia**:
   - Se determinó cuál producto deja más margen en términos monetarios, crucial para tomar decisiones sobre qué productos promocionar más intensamente.

5. **Fecha de Lanzamiento de los Productos**:
   - Se pudo determinar la fecha de lanzamiento de cada producto, útil para correlacionar los lanzamientos con las ventas y evaluar el éxito de los nuevos productos.

6. **Ventas Netas por Año y Margen**:
   - El cálculo de las ventas netas por año, así como el margen numérico y porcentual de cada producto, permitió evaluar la rentabilidad de cada producto y comparar su desempeño a lo largo del tiempo.

7. **Meses con Ventas Brutas Más Fuertes**:
   - Identificación de los meses con mayores ventas brutas, útil para planificar estrategias de marketing y manejo de inventarios.

#### Análisis de Tráfico Web

8. **Ads o Contenidos que Atraen Más Sesiones**:
   - Se analizaron los anuncios o contenidos que atrajeron más sesiones a la página web, ayudando a entender qué estrategias de marketing digital son más efectivas.

9. **Diferencia entre Sesiones y Usuarios**:
   - Se identificó la cantidad de usuarios individuales y se comparó con el número de sesiones, entendiendo la recurrencia de los usuarios y su comportamiento en la web.

10. **Source o Fuente de Usuarios y Sesiones**:
    - Se determinaron las fuentes que trajeron más usuarios y sesiones, clave para enfocar las estrategias de adquisición de usuarios.

11. **Sources o Fuentes que Generan Más Ventas**:
    - Identificación de las fuentes que generaron más ventas, proporcionando información sobre qué canales de marketing son más efectivos en términos de conversión.

12. **Meses que Atraen Más Tráfico**:
    - Se analizaron los meses con más tráfico web, ayudando a identificar patrones de tráfico y a planificar mejor las campañas de marketing.

13. **Dispositivos que Atraen Más Sesiones en el Mes con Más Tráfico**:
    - Análisis de la cantidad de sesiones provenientes de dispositivos móviles versus ordenadores en el mes con más tráfico, proporcionando información sobre el comportamiento del usuario y la necesidad de optimización móvil.

14. **Campañas que Generan Más Margen por Productos**:
    - Se identificaron las campañas que generan más margen por productos, ayudando a enfocar los esfuerzos de marketing en las campañas más rentables.
## Solución

### Conclusiones del Proyecto Ecommerce

#### Análisis de Ventas

1. **Ventas por Año y Mes**:
   - Se identificaron las ventas brutas mensuales y anuales, permitiendo entender las fluctuaciones de ventas a lo largo del tiempo e identificar los meses más fuertes y los más débiles en términos de ingresos.

2. **Ventas Brutas Medias Mensuales y Anuales**:
   - Las ventas brutas medias se calcularon y se identificaron los meses con mayores ventas promedio, mostrando tendencias estacionales y ayudando a identificar los picos de demanda.

3. **Producto Más Vendido**:
   - Se identificó el producto con mayores ventas en términos monetarios, proporcionando información valiosa sobre cuáles productos tienen mayor aceptación en el mercado.

4. **Producto con Mayor Margen de Ganancia**:
   - Se determinó cuál producto deja más margen en términos monetarios, crucial para tomar decisiones sobre qué productos promocionar más intensamente.

5. **Fecha de Lanzamiento de los Productos**:
   - Se pudo determinar la fecha de lanzamiento de cada producto, útil para correlacionar los lanzamientos con las ventas y evaluar el éxito de los nuevos productos.

6. **Ventas Netas por Año y Margen**:
   - El cálculo de las ventas netas por año, así como el margen numérico y porcentual de cada producto, permitió evaluar la rentabilidad de cada producto y comparar su desempeño a lo largo del tiempo.

7. **Meses con Ventas Brutas Más Fuertes**:
   - Identificación de los meses con mayores ventas brutas, útil para planificar estrategias de marketing y manejo de inventarios.

#### Análisis de Tráfico Web

8. **Ads o Contenidos que Atraen Más Sesiones**:
   - Se analizaron los anuncios o contenidos que atrajeron más sesiones a la página web, ayudando a entender qué estrategias de marketing digital son más efectivas.

9. **Diferencia entre Sesiones y Usuarios**:
   - Se identificó la cantidad de usuarios individuales y se comparó con el número de sesiones, entendiendo la recurrencia de los usuarios y su comportamiento en la web.

10. **Source o Fuente de Usuarios y Sesiones**:
    - Se determinaron las fuentes que trajeron más usuarios y sesiones, clave para enfocar las estrategias de adquisición de usuarios.

11. **Sources o Fuentes que Generan Más Ventas**:
    - Identificación de las fuentes que generaron más ventas, proporcionando información sobre qué canales de marketing son más efectivos en términos de conversión.

12. **Meses que Atraen Más Tráfico**:
    - Se analizaron los meses con más tráfico web, ayudando a identificar patrones de tráfico y a planificar mejor las campañas de marketing.

13. **Dispositivos que Atraen Más Sesiones en el Mes con Más Tráfico**:
    - Análisis de la cantidad de sesiones provenientes de dispositivos móviles versus ordenadores en el mes con más tráfico, proporcionando información sobre el comportamiento del usuario y la necesidad de optimización móvil.

14. **Campañas que Generan Más Margen por Productos**:
    - Se identificaron las campañas que generan más margen por productos, ayudando a enfocar los esfuerzos de marketing en las campañas más rentables.
## Solución

### Conclusiones del Proyecto Ecommerce

#### Análisis de Ventas

1. **Ventas por Año y Mes**:
   - Se identificaron las ventas brutas mensuales y anuales, permitiendo entender las fluctuaciones de ventas a lo largo del tiempo e identificar los meses más fuertes y los más débiles en términos de ingresos.

2. **Ventas Brutas Medias Mensuales y Anuales**:
   - Las ventas brutas medias se calcularon y se identificaron los meses con mayores ventas promedio, mostrando tendencias estacionales y ayudando a identificar los picos de demanda.

3. **Producto Más Vendido**:
   - Se identificó el producto con mayores ventas en términos monetarios, proporcionando información valiosa sobre cuáles productos tienen mayor aceptación en el mercado.

4. **Producto con Mayor Margen de Ganancia**:
   - Se determinó cuál producto deja más margen en términos monetarios, crucial para tomar decisiones sobre qué productos promocionar más intensamente.

5. **Fecha de Lanzamiento de los Productos**:
   - Se pudo determinar la fecha de lanzamiento de cada producto, útil para correlacionar los lanzamientos con las ventas y evaluar el éxito de los nuevos productos.

6. **Ventas Netas por Año y Margen**:
   - El cálculo de las ventas netas por año, así como el margen numérico y porcentual de cada producto, permitió evaluar la rentabilidad de cada producto y comparar su desempeño a lo largo del tiempo.

7. **Meses con Ventas Brutas Más Fuertes**:
   - Identificación de los meses con mayores ventas brutas, útil para planificar estrategias de marketing y manejo de inventarios.

#### Análisis de Tráfico Web

8. **Ads o Contenidos que Atraen Más Sesiones**:
   - Se analizaron los anuncios o contenidos que atrajeron más sesiones a la página web, ayudando a entender qué estrategias de marketing digital son más efectivas.

9. **Diferencia entre Sesiones y Usuarios**:
   - Se identificó la cantidad de usuarios individuales y se comparó con el número de sesiones, entendiendo la recurrencia de los usuarios y su comportamiento en la web.

10. **Source o Fuente de Usuarios y Sesiones**:
    - Se determinaron las fuentes que trajeron más usuarios y sesiones, clave para enfocar las estrategias de adquisición de usuarios.

11. **Sources o Fuentes que Generan Más Ventas**:
    - Identificación de las fuentes que generaron más ventas, proporcionando información sobre qué canales de marketing son más efectivos en términos de conversión.

12. **Meses que Atraen Más Tráfico**:
    - Se analizaron los meses con más tráfico web, ayudando a identificar patrones de tráfico y a planificar mejor las campañas de marketing.

13. **Dispositivos que Atraen Más Sesiones en el Mes con Más Tráfico**:
    - Análisis de la cantidad de sesiones provenientes de dispositivos móviles versus ordenadores en el mes con más tráfico, proporcionando información sobre el comportamiento del usuario y la necesidad de optimización móvil.

14. **Campañas que Generan Más Margen por Productos**:
    - Se identificaron las campañas que generan más margen por productos, ayudando a enfocar los esfuerzos de marketing en las campañas más rentables.
## Solución

### Conclusiones del Proyecto Ecommerce

#### Análisis de Ventas

1. **Ventas por Año y Mes**:
   - Se identificaron las ventas brutas mensuales y anuales, permitiendo entender las fluctuaciones de ventas a lo largo del tiempo e identificar los meses más fuertes y los más débiles en términos de ingresos.

2. **Ventas Brutas Medias Mensuales y Anuales**:
   - Las ventas brutas medias se calcularon y se identificaron los meses con mayores ventas promedio, mostrando tendencias estacionales y ayudando a identificar los picos de demanda.

3. **Producto Más Vendido**:
   - Se identificó el producto con mayores ventas en términos monetarios, proporcionando información valiosa sobre cuáles productos tienen mayor aceptación en el mercado.

4. **Producto con Mayor Margen de Ganancia**:
   - Se determinó cuál producto deja más margen en términos monetarios, crucial para tomar decisiones sobre qué productos promocionar más intensamente.

5. **Fecha de Lanzamiento de los Productos**:
   - Se pudo determinar la fecha de lanzamiento de cada producto, útil para correlacionar los lanzamientos con las ventas y evaluar el éxito de los nuevos productos.

6. **Ventas Netas por Año y Margen**:
   - El cálculo de las ventas netas por año, así como el margen numérico y porcentual de cada producto, permitió evaluar la rentabilidad de cada producto y comparar su desempeño a lo largo del tiempo.

7. **Meses con Ventas Brutas Más Fuertes**:
   - Identificación de los meses con mayores ventas brutas, útil para planificar estrategias de marketing y manejo de inventarios.

#### Análisis de Tráfico Web

8. **Ads o Contenidos que Atraen Más Sesiones**:
   - Se analizaron los anuncios o contenidos que atrajeron más sesiones a la página web, ayudando a entender qué estrategias de marketing digital son más efectivas.

9. **Diferencia entre Sesiones y Usuarios**:
   - Se identificó la cantidad de usuarios individuales y se comparó con el número de sesiones, entendiendo la recurrencia de los usuarios y su comportamiento en la web.

10. **Source o Fuente de Usuarios y Sesiones**:
    - Se determinaron las fuentes que trajeron más usuarios y sesiones, clave para enfocar las estrategias de adquisición de usuarios.

11. **Sources o Fuentes que Generan Más Ventas**:
    - Identificación de las fuentes que generaron más ventas, proporcionando información sobre qué canales de marketing son más efectivos en términos de conversión.

12. **Meses que Atraen Más Tráfico**:
    - Se analizaron los meses con más tráfico web, ayudando a identificar patrones de tráfico y a planificar mejor las campañas de marketing.

13. **Dispositivos que Atraen Más Sesiones en el Mes con Más Tráfico**:
    - Análisis de la cantidad de sesiones provenientes de dispositivos móviles versus ordenadores en el mes con más tráfico, proporcionando información sobre el comportamiento del usuario y la necesidad de optimización móvil.

14. **Campañas que Generan Más Margen por Productos**:
    - Se identificaron las campañas que generan más margen por productos, ayudando a enfocar los esfuerzos de marketing en las campañas más rentables.
## Solución

### Conclusiones del Proyecto Ecommerce

#### Análisis de Ventas

1. **Ventas por Año y Mes**:
   - Se identificaron las ventas brutas mensuales y anuales, permitiendo entender las fluctuaciones de ventas a lo largo del tiempo e identificar los meses más fuertes y los más débiles en términos de ingresos.

2. **Ventas Brutas Medias Mensuales y Anuales**:
   - Las ventas brutas medias se calcularon y se identificaron los meses con mayores ventas promedio, mostrando tendencias estacionales y ayudando a identificar los picos de demanda.

3. **Producto Más Vendido**:
   - Se identificó el producto con mayores ventas en términos monetarios, proporcionando información valiosa sobre cuáles productos tienen mayor aceptación en el mercado.

4. **Producto con Mayor Margen de Ganancia**:
   - Se determinó cuál producto deja más margen en términos monetarios, crucial para tomar decisiones sobre qué productos promocionar más intensamente.

5. **Fecha de Lanzamiento de los Productos**:
   - Se pudo determinar la fecha de lanzamiento de cada producto, útil para correlacionar los lanzamientos con las ventas y evaluar el éxito de los nuevos productos.

6. **Ventas Netas por Año y Margen**:
   - El cálculo de las ventas netas por año, así como el margen numérico y porcentual de cada producto, permitió evaluar la rentabilidad de cada producto y comparar su desempeño a lo largo del tiempo.

7. **Meses con Ventas Brutas Más Fuertes**:
   - Identificación de los meses con mayores ventas brutas, útil para planificar estrategias de marketing y manejo de inventarios.

#### Análisis de Tráfico Web

8. **Ads o Contenidos que Atraen Más Sesiones**:
   - Se analizaron los anuncios o contenidos que atrajeron más sesiones a la página web, ayudando a entender qué estrategias de marketing digital son más efectivas.

9. **Diferencia entre Sesiones y Usuarios**:
   - Se identificó la cantidad de usuarios individuales y se comparó con el número de sesiones, entendiendo la recurrencia de los usuarios y su comportamiento en la web.

10. **Source o Fuente de Usuarios y Sesiones**:
    - Se determinaron las fuentes que trajeron más usuarios y sesiones, clave para enfocar las estrategias de adquisición de usuarios.

11. **Sources o Fuentes que Generan Más Ventas**:
    - Identificación de las fuentes que generaron más ventas, proporcionando información sobre qué canales de marketing son más efectivos en términos de conversión.

12. **Meses que Atraen Más Tráfico**:
    - Se analizaron los meses con más tráfico web, ayudando a identificar patrones de tráfico y a planificar mejor las campañas de marketing.

13. **Dispositivos que Atraen Más Sesiones en el Mes con Más Tráfico**:
    - Análisis de la cantidad de sesiones provenientes de dispositivos móviles versus ordenadores en el mes con más tráfico, proporcionando información sobre el comportamiento del usuario y la necesidad de optimización móvil.

14. **Campañas que Generan Más Margen por Productos**:
    - Se identificaron las campañas que generan más margen por productos, ayudando a enfocar los esfuerzos de marketing en las campañas más rentables.
## Solución

### Conclusiones del Proyecto Ecommerce

#### Análisis de Ventas

1. **Ventas por Año y Mes**:
   - Se identificaron las ventas brutas mensuales y anuales, permitiendo entender las fluctuaciones de ventas a lo largo del tiempo e identificar los meses más fuertes y los más débiles en términos de ingresos.

2. **Ventas Brutas Medias Mensuales y Anuales**:
   - Las ventas brutas medias se calcularon y se identificaron los meses con mayores ventas promedio, mostrando tendencias estacionales y ayudando a identificar los picos de demanda.

3. **Producto Más Vendido**:
   - Se identificó el producto con mayores ventas en términos monetarios, proporcionando información valiosa sobre cuáles productos tienen mayor aceptación en el mercado.

4. **Producto con Mayor Margen de Ganancia**:
   - Se determinó cuál producto deja más margen en términos monetarios, crucial para tomar decisiones sobre qué productos promocionar más intensamente.

5. **Fecha de Lanzamiento de los Productos**:
   - Se pudo determinar la fecha de lanzamiento de cada producto, útil para correlacionar los lanzamientos con las ventas y evaluar el éxito de los nuevos productos.

6. **Ventas Netas por Año y Margen**:
   - El cálculo de las ventas netas por año, así como el margen numérico y porcentual de cada producto, permitió evaluar la rentabilidad de cada producto y comparar su desempeño a lo largo del tiempo.

7. **Meses con Ventas Brutas Más Fuertes**:
   - Identificación de los meses con mayores ventas brutas, útil para planificar estrategias de marketing y manejo de inventarios.

#### Análisis de Tráfico Web

8. **Ads o Contenidos que Atraen Más Sesiones**:
   - Se analizaron los anuncios o contenidos que atrajeron más sesiones a la página web, ayudando a entender qué estrategias de marketing digital son más efectivas.

9. **Diferencia entre Sesiones y Usuarios**:
   - Se identificó la cantidad de usuarios individuales y se comparó con el número de sesiones, entendiendo la recurrencia de los usuarios y su comportamiento en la web.

10. **Source o Fuente de Usuarios y Sesiones**:
    - Se determinaron las fuentes que trajeron más usuarios y sesiones, clave para enfocar las estrategias de adquisición de usuarios.

11. **Sources o Fuentes que Generan Más Ventas**:
    - Identificación de las fuentes que generaron más ventas, proporcionando información sobre qué canales de marketing son más efectivos en términos de conversión.

12. **Meses que Atraen Más Tráfico**:
    - Se analizaron los meses con más tráfico web, ayudando a identificar patrones de tráfico y a planificar mejor las campañas de marketing.

13. **Dispositivos que Atraen Más Sesiones en el Mes con Más Tráfico**:
    - Análisis de la cantidad de sesiones provenientes de dispositivos móviles versus ordenadores en el mes con más tráfico, proporcionando información sobre el comportamiento del usuario y la necesidad de optimización móvil.

14. **Campañas que Generan Más Margen por Productos**:
    - Se identificaron las campañas que generan más margen por productos, ayudando a enfocar los esfuerzos de marketing en las campañas más rentables.
## Solución

### Conclusiones del Proyecto Ecommerce

#### Análisis de Ventas

1. **Ventas por Año y Mes**:
   - Se identificaron las ventas brutas mensuales y anuales, permitiendo entender las fluctuaciones de ventas a lo largo del tiempo e identificar los meses más fuertes y los más débiles en términos de ingresos.

2. **Ventas Brutas Medias Mensuales y Anuales**:
   - Las ventas brutas medias se calcularon y se identificaron los meses con mayores ventas promedio, mostrando tendencias estacionales y ayudando a identificar los picos de demanda.

3. **Producto Más Vendido**:
   - Se identificó el producto con mayores ventas en términos monetarios, proporcionando información valiosa sobre cuáles productos tienen mayor aceptación en el mercado.

4. **Producto con Mayor Margen de Ganancia**:
   - Se determinó cuál producto deja más margen en términos monetarios, crucial para tomar decisiones sobre qué productos promocionar más intensamente.

5. **Fecha de Lanzamiento de los Productos**:
   - Se pudo determinar la fecha de lanzamiento de cada producto, útil para correlacionar los lanzamientos con las ventas y evaluar el éxito de los nuevos productos.

6. **Ventas Netas por Año y Margen**:
   - El cálculo de las ventas netas por año, así como el margen numérico y porcentual de cada producto, permitió evaluar la rentabilidad de cada producto y comparar su desempeño a lo largo del tiempo.

7. **Meses con Ventas Brutas Más Fuertes**:
   - Identificación de los meses con mayores ventas brutas, útil para planificar estrategias de marketing y manejo de inventarios.

#### Análisis de Tráfico Web

8. **Ads o Contenidos que Atraen Más Sesiones**:
   - Se analizaron los anuncios o contenidos que atrajeron más sesiones a la página web, ayudando a entender qué estrategias de marketing digital son más efectivas.

9. **Diferencia entre Sesiones y Usuarios**:
   - Se identificó la cantidad de usuarios individuales y se comparó con el número de sesiones, entendiendo la recurrencia de los usuarios y su comportamiento en la web.

10. **Source o Fuente de Usuarios y Sesiones**:
    - Se determinaron las fuentes que trajeron más usuarios y sesiones, clave para enfocar las estrategias de adquisición de usuarios.

11. **Sources o Fuentes que Generan Más Ventas**:
    - Identificación de las fuentes que generaron más ventas, proporcionando información sobre qué canales de marketing son más efectivos en términos de conversión.

12. **Meses que Atraen Más Tráfico**:
    - Se analizaron los meses con más tráfico web, ayudando a identificar patrones de tráfico y a planificar mejor las campañas de marketing.

13. **Dispositivos que Atraen Más Sesiones en el Mes con Más Tráfico**:
    - Análisis de la cantidad de sesiones provenientes de dispositivos móviles versus ordenadores en el mes con más tráfico, proporcionando información sobre el comportamiento del usuario y la necesidad de optimización móvil.

14. **Campañas que Generan Más Margen por Productos**:
    - Se identificaron las campañas que generan más margen por productos, ayudando a enfocar los esfuerzos de marketing en las campañas más rentables.
## Solución

### Conclusiones del Proyecto Ecommerce

#### Análisis de Ventas

1. **Ventas por Año y Mes**:
   - Se identificaron las ventas brutas mensuales y anuales, permitiendo entender las fluctuaciones de ventas a lo largo del tiempo e identificar los meses más fuertes y los más débiles en términos de ingresos.

2. **Ventas Brutas Medias Mensuales y Anuales**:
   - Las ventas brutas medias se calcularon y se identificaron los meses con mayores ventas promedio, mostrando tendencias estacionales y ayudando a identificar los picos de demanda.

3. **Producto Más Vendido**:
   - Se identificó el producto con mayores ventas en términos monetarios, proporcionando información valiosa sobre cuáles productos tienen mayor aceptación en el mercado.

4. **Producto con Mayor Margen de Ganancia**:
   - Se determinó cuál producto deja más margen en términos monetarios, crucial para tomar decisiones sobre qué productos promocionar más intensamente.

5. **Fecha de Lanzamiento de los Productos**:
   - Se pudo determinar la fecha de lanzamiento de cada producto, útil para correlacionar los lanzamientos con las ventas y evaluar el éxito de los nuevos productos.

6. **Ventas Netas por Año y Margen**:
   - El cálculo de las ventas netas por año, así como el margen numérico y porcentual de cada producto, permitió evaluar la rentabilidad de cada producto y comparar su desempeño a lo largo del tiempo.

7. **Meses con Ventas Brutas Más Fuertes**:
   - Identificación de los meses con mayores ventas brutas, útil para planificar estrategias de marketing y manejo de inventarios.

#### Análisis de Tráfico Web

8. **Ads o Contenidos que Atraen Más Sesiones**:
   - Se analizaron los anuncios o contenidos que atrajeron más sesiones a la página web, ayudando a entender qué estrategias de marketing digital son más efectivas.

9. **Diferencia entre Sesiones y Usuarios**:
   - Se identificó la cantidad de usuarios individuales y se comparó con el número de sesiones, entendiendo la recurrencia de los usuarios y su comportamiento en la web.

10. **Source o Fuente de Usuarios y Sesiones**:
    - Se determinaron las fuentes que trajeron más usuarios y sesiones, clave para enfocar las estrategias de adquisición de usuarios.

11. **Sources o Fuentes que Generan Más Ventas**:
    - Identificación de las fuentes que generaron más ventas, proporcionando información sobre qué canales de marketing son más efectivos en términos de conversión.

12. **Meses que Atraen Más Tráfico**:
    - Se analizaron los meses con más tráfico web, ayudando a identificar patrones de tráfico y a planificar mejor las campañas de marketing.

13. **Dispositivos que Atraen Más Sesiones en el Mes con Más Tráfico**:
    - Análisis de la cantidad de sesiones provenientes de dispositivos móviles versus ordenadores en el mes con más tráfico, proporcionando información sobre el comportamiento del usuario y la necesidad de optimización móvil.

14. **Campañas que Generan Más Margen por Productos**:
    - Se identificaron las campañas que generan más margen por productos, ayudando a enfocar los esfuerzos de marketing en las campañas más rentables.
## Solución

### Conclusiones del Proyecto Ecommerce

#### Análisis de Ventas

1. **Ventas por Año y Mes**:
   - Se identificaron las ventas brutas mensuales y anuales, permitiendo entender las fluctuaciones de ventas a lo largo del tiempo e identificar los meses más fuertes y los más débiles en términos de ingresos.

2. **Ventas Brutas Medias Mensuales y Anuales**:
   - Las ventas brutas medias se calcularon y se identificaron los meses con mayores ventas promedio, mostrando tendencias estacionales y ayudando a identificar los picos de demanda.

3. **Producto Más Vendido**:
   - Se identificó el producto con mayores ventas en términos monetarios, proporcionando información valiosa sobre cuáles productos tienen mayor aceptación en el mercado.

4. **Producto con Mayor Margen de Ganancia**:
   - Se determinó cuál producto deja más margen en términos monetarios, crucial para tomar decisiones sobre qué productos promocionar más intensamente.

5. **Fecha de Lanzamiento de los Productos**:
   - Se pudo determinar la fecha de lanzamiento de cada producto, útil para correlacionar los lanzamientos con las ventas y evaluar el éxito de los nuevos productos.

6. **Ventas Netas por Año y Margen**:
   - El cálculo de las ventas netas por año, así como el margen numérico y porcentual de cada producto, permitió evaluar la rentabilidad de cada producto y comparar su desempeño a lo largo del tiempo.

7. **Meses con Ventas Brutas Más Fuertes**:
   - Identificación de los meses con mayores ventas brutas, útil para planificar estrategias de marketing y manejo de inventarios.

#### Análisis de Tráfico Web

8. **Ads o Contenidos que Atraen Más Sesiones**:
   - Se analizaron los anuncios o contenidos que atrajeron más sesiones a la página web, ayudando a entender qué estrategias de marketing digital son más efectivas.

9. **Diferencia entre Sesiones y Usuarios**:
   - Se identificó la cantidad de usuarios individuales y se comparó con el número de sesiones, entendiendo la recurrencia de los usuarios y su comportamiento en la web.

10. **Source o Fuente de Usuarios y Sesiones**:
    - Se determinaron las fuentes que trajeron más usuarios y sesiones, clave para enfocar las estrategias de adquisición de usuarios.

11. **Sources o Fuentes que Generan Más Ventas**:
    - Identificación de las fuentes que generaron más ventas, proporcionando información sobre qué canales de marketing son más efectivos en términos de conversión.

12. **Meses que Atraen Más Tráfico**:
    - Se analizaron los meses con más tráfico web, ayudando a identificar patrones de tráfico y a planificar mejor las campañas de marketing.

13. **Dispositivos que Atraen Más Sesiones en el Mes con Más Tráfico**:
    - Análisis de la cantidad de sesiones provenientes de dispositivos móviles versus ordenadores en el mes con más tráfico, proporcionando información sobre el comportamiento del usuario y la necesidad de optimización móvil.

14. **Campañas que Generan Más Margen por Productos**:
    - Se identificaron las campañas que generan más margen por productos, ayudando a enfocar los esfuerzos de marketing en las campañas más rentables.
## Solución

### Conclusiones del Proyecto Ecommerce

#### Análisis de Ventas

1. **Ventas por Año y Mes**:
   - Se identificaron las ventas brutas mensuales y anuales, permitiendo entender las fluctuaciones de ventas a lo largo del tiempo e identificar los meses más fuertes y los más débiles en términos de ingresos.

2. **Ventas Brutas Medias Mensuales y Anuales**:
   - Las ventas brutas medias se calcularon y se identificaron los meses con mayores ventas promedio, mostrando tendencias estacionales y ayudando a identificar los picos de demanda.

3. **Producto Más Vendido**:
   - Se identificó el producto con mayores ventas en términos monetarios, proporcionando información valiosa sobre cuáles productos tienen mayor aceptación en el mercado.

4. **Producto con Mayor Margen de Ganancia**:
   - Se determinó cuál producto deja más margen en términos monetarios, crucial para tomar decisiones sobre qué productos promocionar más intensamente.

5. **Fecha de Lanzamiento de los Productos**:
   - Se pudo determinar la fecha de lanzamiento de cada producto, útil para correlacionar los lanzamientos con las ventas y evaluar el éxito de los nuevos productos.

6. **Ventas Netas por Año y Margen**:
   - El cálculo de las ventas netas por año, así como el margen numérico y porcentual de cada producto, permitió evaluar la rentabilidad de cada producto y comparar su desempeño a lo largo del tiempo.

7. **Meses con Ventas Brutas Más Fuertes**:
   - Identificación de los meses con mayores ventas brutas, útil para planificar estrategias de marketing y manejo de inventarios.

#### Análisis de Tráfico Web

8. **Ads o Contenidos que Atraen Más Sesiones**:
   - Se analizaron los anuncios o contenidos que atrajeron más sesiones a la página web, ayudando a entender qué estrategias de marketing digital son más efectivas.

9. **Diferencia entre Sesiones y Usuarios**:
   - Se identificó la cantidad de usuarios individuales y se comparó con el número de sesiones, entendiendo la recurrencia de los usuarios y su comportamiento en la web.

10. **Source o Fuente de Usuarios y Sesiones**:
    - Se determinaron las fuentes que trajeron más usuarios y sesiones, clave para enfocar las estrategias de adquisición de usuarios.

11. **Sources o Fuentes que Generan Más Ventas**:
    - Identificación de las fuentes que generaron más ventas, proporcionando información sobre qué canales de marketing son más efectivos en términos de conversión.

12. **Meses que Atraen Más Tráfico**:
    - Se analizaron los meses con más tráfico web, ayudando a identificar patrones de tráfico y a planificar mejor las campañas de marketing.

13. **Dispositivos que Atraen Más Sesiones en el Mes con Más Tráfico**:
    - Análisis de la cantidad de sesiones provenientes de dispositivos móviles versus ordenadores en el mes con más tráfico, proporcionando información sobre el comportamiento del usuario y la necesidad de optimización móvil.

14. **Campañas que Generan Más Margen por Productos**:
    - Se identificaron las campañas que generan más margen por productos, ayudando a enfocar los esfuerzos de marketing en las campañas más rentables.
## Solución

### Conclusiones del Proyecto Ecommerce

#### Análisis de Ventas

1. **Ventas por Año y Mes**:
   - Se identificaron las ventas brutas mensuales y anuales, permitiendo entender las fluctuaciones de ventas a lo largo del tiempo e identificar los meses más fuertes y los más débiles en términos de ingresos.

2. **Ventas Brutas Medias Mensuales y Anuales**:
   - Las ventas brutas medias se calcularon y se identificaron los meses con mayores ventas promedio, mostrando tendencias estacionales y ayudando a identificar los picos de demanda.

3. **Producto Más Vendido**:
   - Se identificó el producto con mayores ventas en términos monetarios, proporcionando información valiosa sobre cuáles productos tienen mayor aceptación en el mercado.

4. **Producto con Mayor Margen de Ganancia**:
   - Se determinó cuál producto deja más margen en términos monetarios, crucial para tomar decisiones sobre qué productos promocionar más intensamente.

5. **Fecha de Lanzamiento de los Productos**:
   - Se pudo determinar la fecha de lanzamiento de cada producto, útil para correlacionar los lanzamientos con las ventas y evaluar el éxito de los nuevos productos.

6. **Ventas Netas por Año y Margen**:
   - El cálculo de las ventas netas por año, así como el margen numérico y porcentual de cada producto, permitió evaluar la rentabilidad de cada producto y comparar su desempeño a lo largo del tiempo.

7. **Meses con Ventas Brutas Más Fuertes**:
   - Identificación de los meses con mayores ventas brutas, útil para planificar estrategias de marketing y manejo de inventarios.

#### Análisis de Tráfico Web

8. **Ads o Contenidos que Atraen Más Sesiones**:
   - Se analizaron los anuncios o contenidos que atrajeron más sesiones a la página web, ayudando a entender qué estrategias de marketing digital son más efectivas.

9. **Diferencia entre Sesiones y Usuarios**:
   - Se identificó la cantidad de usuarios individuales y se comparó con el número de sesiones, entendiendo la recurrencia de los usuarios y su comportamiento en la web.

10. **Source o Fuente de Usuarios y Sesiones**:
    - Se determinaron las fuentes que trajeron más usuarios y sesiones, clave para enfocar las estrategias de adquisición de usuarios.

11. **Sources o Fuentes que Generan Más Ventas**:
    - Identificación de las fuentes que generaron más ventas, proporcionando información sobre qué canales de marketing son más efectivos en términos de conversión.

12. **Meses que Atraen Más Tráfico**:
    - Se analizaron los meses con más tráfico web, ayudando a identificar patrones de tráfico y a planificar mejor las campañas de marketing.

13. **Dispositivos que Atraen Más Sesiones en el Mes con Más Tráfico**:
    - Análisis de la cantidad de sesiones provenientes de dispositivos móviles versus ordenadores en el mes con más tráfico, proporcionando información sobre el comportamiento del usuario y la necesidad de optimización móvil.

14. **Campañas que Generan Más Margen por Productos**:
    - Se identificaron las campañas que generan más margen por productos, ayudando a enfocar los esfuerzos de marketing en las campañas más rentables.
## Solución

### Conclusiones del Proyecto Ecommerce

#### Análisis de Ventas

1. **Ventas por Año y Mes**:
   - Se identificaron las ventas brutas mensuales y anuales, permitiendo entender las fluctuaciones de ventas a lo largo del tiempo e identificar los meses más fuertes y los más débiles en términos de ingresos.

2. **Ventas Brutas Medias Mensuales y Anuales**:
   - Las ventas brutas medias se calcularon y se identificaron los meses con mayores ventas promedio, mostrando tendencias estacionales y ayudando a identificar los picos de demanda.

3. **Producto Más Vendido**:
   - Se identificó el producto con mayores ventas en términos monetarios, proporcionando información valiosa sobre cuáles productos tienen mayor aceptación en el mercado.

4. **Producto con Mayor Margen de Ganancia**:
   - Se determinó cuál producto deja más margen en términos monetarios, crucial para tomar decisiones sobre qué productos promocionar más intensamente.

5. **Fecha de Lanzamiento de los Productos**:
   - Se pudo determinar la fecha de lanzamiento de cada producto, útil para correlacionar los lanzamientos con las ventas y evaluar el éxito de los nuevos productos.

6. **Ventas Netas por Año y Margen**:
   - El cálculo de las ventas netas por año, así como el margen numérico y porcentual de cada producto, permitió evaluar la rentabilidad de cada producto y comparar su desempeño a lo largo del tiempo.

7. **Meses con Ventas Brutas Más Fuertes**:
   - Identificación de los meses con mayores ventas brutas, útil para planificar estrategias de marketing y manejo de inventarios.

#### Análisis de Tráfico Web

8. **Ads o Contenidos que Atraen Más Sesiones**:
   - Se analizaron los anuncios o contenidos que atrajeron más sesiones a la página web, ayudando a entender qué estrategias de marketing digital son más efectivas.

9. **Diferencia entre Sesiones y Usuarios**:
   - Se identificó la cantidad de usuarios individuales y se comparó con el número de sesiones, entendiendo la recurrencia de los usuarios y su comportamiento en la web.

10. **Source o Fuente de Usuarios y Sesiones**:
    - Se determinaron las fuentes que trajeron más usuarios y sesiones, clave para enfocar las estrategias de adquisición de usuarios.

11. **Sources o Fuentes que Generan Más Ventas**:
    - Identificación de las fuentes que generaron más ventas, proporcionando información sobre qué canales de marketing son más efectivos en términos de conversión.

12. **Meses que Atraen Más Tráfico**:
    - Se analizaron los meses con más tráfico web, ayudando a identificar patrones de tráfico y a planificar mejor las campañas de marketing.

13. **Dispositivos que Atraen Más Sesiones en el Mes con Más Tráfico**:
    - Análisis de la cantidad de sesiones provenientes de dispositivos móviles versus ordenadores en el mes con más tráfico, proporcionando información sobre el comportamiento del usuario y la necesidad de optimización móvil.

14. **Campañas que Generan Más Margen por Productos**:
    - Se identificaron las campañas que generan más margen por productos, ayudando a enfocar los esfuerzos de marketing en las campañas más rentables.
## Solución

### Conclusiones del Proyecto Ecommerce

#### Análisis de Ventas

1. **Ventas por Año y Mes**:
   - Se identificaron las ventas brutas mensuales y anuales, permitiendo entender las fluctuaciones de ventas a lo largo del tiempo e identificar los meses más fuertes y los más débiles en términos de ingresos.

2. **Ventas Brutas Medias Mensuales y Anuales**:
   - Las ventas brutas medias se calcularon y se identificaron los meses con mayores ventas promedio, mostrando tendencias estacionales y ayudando a identificar los picos de demanda.

3. **Producto Más Vendido**:
   - Se identificó el producto con mayores ventas en términos monetarios, proporcionando información valiosa sobre cuáles productos tienen mayor aceptación en el mercado.

4. **Producto con Mayor Margen de Ganancia**:
   - Se determinó cuál producto deja más margen en términos monetarios, crucial para tomar decisiones sobre qué productos promocionar más intensamente.

5. **Fecha de Lanzamiento de los Productos**:
   - Se pudo determinar la fecha de lanzamiento de cada producto, útil para correlacionar los lanzamientos con las ventas y evaluar el éxito de los nuevos productos.

6. **Ventas Netas por Año y Margen**:
   - El cálculo de las ventas netas por año, así como el margen numérico y porcentual de cada producto, permitió evaluar la rentabilidad de cada producto y comparar su desempeño a lo largo del tiempo.

7. **Meses con Ventas Brutas Más Fuertes**:
   - Identificación de los meses con mayores ventas brutas, útil para planificar estrategias de marketing y manejo de inventarios.

#### Análisis de Tráfico Web

8. **Ads o Contenidos que Atraen Más Sesiones**:
   - Se analizaron los anuncios o contenidos que atrajeron más sesiones a la página web, ayudando a entender qué estrategias de marketing digital son más efectivas.

9. **Diferencia entre Sesiones y Usuarios**:
   - Se identificó la cantidad de usuarios individuales y se comparó con el número de sesiones, entendiendo la recurrencia de los usuarios y su comportamiento en la web.

10. **Source o Fuente de Usuarios y Sesiones**:
    - Se determinaron las fuentes que trajeron más usuarios y sesiones, clave para enfocar las estrategias de adquisición de usuarios.

11. **Sources o Fuentes que Generan Más Ventas**:
    - Identificación de las fuentes que generaron más ventas, proporcionando información sobre qué canales de marketing son más efectivos en términos de conversión.

12. **Meses que Atraen Más Tráfico**:
    - Se analizaron los meses con más tráfico web, ayudando a identificar patrones de tráfico y a planificar mejor las campañas de marketing.

13. **Dispositivos que Atraen Más Sesiones en el Mes con Más Tráfico**:
    - Análisis de la cantidad de sesiones provenientes de dispositivos móviles versus ordenadores en el mes con más tráfico, proporcionando información sobre el comportamiento del usuario y la necesidad de optimización móvil.

14. **Campañas que Generan Más Margen por Productos**:
    - Se identificaron las campañas que generan más margen por productos, ayudando a enfocar los esfuerzos de marketing en las campañas más rentables.
## Solución

### Conclusiones del Proyecto Ecommerce

#### Análisis de Ventas

1. **Ventas por Año y Mes**:
   - Se identificaron las ventas brutas mensuales y anuales, permitiendo entender las fluctuaciones de ventas a lo largo del tiempo e identificar los meses más fuertes y los más débiles en términos de ingresos.

2. **Ventas Brutas Medias Mensuales y Anuales**:
   - Las ventas brutas medias se calcularon y se identificaron los meses con mayores ventas promedio, mostrando tendencias estacionales y ayudando a identificar los picos de demanda.

3. **Producto Más Vendido**:
   - Se identificó el producto con mayores ventas en términos monetarios, proporcionando información valiosa sobre cuáles productos tienen mayor aceptación en el mercado.

4. **Producto con Mayor Margen de Ganancia**:
   - Se determinó cuál producto deja más margen en términos monetarios, crucial para tomar decisiones sobre qué productos promocionar más intensamente.

5. **Fecha de Lanzamiento de los Productos**:
   - Se pudo determinar la fecha de lanzamiento de cada producto, útil para correlacionar los lanzamientos con las ventas y evaluar el éxito de los nuevos productos.

6. **Ventas Netas por Año y Margen**:
   - El cálculo de las ventas netas por año, así como el margen numérico y porcentual de cada producto, permitió evaluar la rentabilidad de cada producto y comparar su desempeño a lo largo del tiempo.

7. **Meses con Ventas Brutas Más Fuertes**:
   - Identificación de los meses con mayores ventas brutas, útil para planificar estrategias de marketing y manejo de inventarios.

#### Análisis de Tráfico Web

8. **Ads o Contenidos que Atraen Más Sesiones**:
   - Se analizaron los anuncios o contenidos que atrajeron más sesiones a la página web, ayudando a entender qué estrategias de marketing digital son más efectivas.

9. **Diferencia entre Sesiones y Usuarios**:
   - Se identificó la cantidad de usuarios individuales y se comparó con el número de sesiones, entendiendo la recurrencia de los usuarios y su comportamiento en la web.

10. **Source o Fuente de Usuarios y Sesiones**:
    - Se determinaron las fuentes que trajeron más usuarios y sesiones, clave para enfocar las estrategias de adquisición de usuarios.

11. **Sources o Fuentes que Generan Más Ventas**:
    - Identificación de las fuentes que generaron más ventas, proporcionando información sobre qué canales de marketing son más efectivos en términos de conversión.

12. **Meses que Atraen Más Tráfico**:
    - Se analizaron los meses con más tráfico web, ayudando a identificar patrones de tráfico y a planificar mejor las campañas de marketing.

13. **Dispositivos que Atraen Más Sesiones en el Mes con Más Tráfico**:
    - Análisis de la cantidad de sesiones provenientes de dispositivos móviles versus ordenadores en el mes con más tráfico, proporcionando información sobre el comportamiento del usuario y la necesidad de optimización móvil.

14. **Campañas que Generan Más Margen por Productos**:
    - Se identificaron las campañas que generan más margen por productos, ayudando a enfocar los esfuerzos de marketing en las campañas más rentables.
## Solución

### Conclusiones del Proyecto Ecommerce

#### Análisis de Ventas

1. **Ventas por Año y Mes**:
   - Se identificaron las ventas brutas mensuales y anuales, permitiendo entender las fluctuaciones de ventas a lo largo del tiempo e identificar los meses más fuertes y los más débiles en términos de ingresos.

2. **Ventas Brutas Medias Mensuales y Anuales**:
   - Las ventas brutas medias se calcularon y se identificaron los meses con mayores ventas promedio, mostrando tendencias estacionales y ayudando a identificar los picos de demanda.

3. **Producto Más Vendido**:
   - Se identificó el producto con mayores ventas en términos monetarios, proporcionando información valiosa sobre cuáles productos tienen mayor aceptación en el mercado.

4. **Producto con Mayor Margen de Ganancia**:
   - Se determinó cuál producto deja más margen en términos monetarios, crucial para tomar decisiones sobre qué productos promocionar más intensamente.

5. **Fecha de Lanzamiento de los Productos**:
   - Se pudo determinar la fecha de lanzamiento de cada producto, útil para correlacionar los lanzamientos con las ventas y evaluar el éxito de los nuevos productos.

6. **Ventas Netas por Año y Margen**:
   - El cálculo de las ventas netas por año, así como el margen numérico y porcentual de cada producto, permitió evaluar la rentabilidad de cada producto y comparar su desempeño a lo largo del tiempo.

7. **Meses con Ventas Brutas Más Fuertes**:
   - Identificación de los meses con mayores ventas brutas, útil para planificar estrategias de marketing y manejo de inventarios.

#### Análisis de Tráfico Web

8. **Ads o Contenidos que Atraen Más Sesiones**:
   - Se analizaron los anuncios o contenidos que atrajeron más sesiones a la página web, ayudando a entender qué estrategias de marketing digital son más efectivas.

9. **Diferencia entre Sesiones y Usuarios**:
   - Se identificó la cantidad de usuarios individuales y se comparó con el número de sesiones, entendiendo la recurrencia de los usuarios y su comportamiento en la web.

10. **Source o Fuente de Usuarios y Sesiones**:
    - Se determinaron las fuentes que trajeron más usuarios y sesiones, clave para enfocar las estrategias de adquisición de usuarios.

11. **Sources o Fuentes que Generan Más Ventas**:
    - Identificación de las fuentes que generaron más ventas, proporcionando información sobre qué canales de marketing son más efectivos en términos de conversión.

12. **Meses que Atraen Más Tráfico**:
    - Se analizaron los meses con más tráfico web, ayudando a identificar patrones de tráfico y a planificar mejor las campañas de marketing.

13. **Dispositivos que Atraen Más Sesiones en el Mes con Más Tráfico**:
    - Análisis de la cantidad de sesiones provenientes de dispositivos móviles versus ordenadores en el mes con más tráfico, proporcionando información sobre el comportamiento del usuario y la necesidad de optimización móvil.

14. **Campañas que Generan Más Margen por Productos**:
    - Se identificaron las campañas que generan más margen por productos, ayudando a enfocar los esfuerzos de marketing en las campañas más rentables.
## Solución

### Conclusiones del Proyecto Ecommerce

#### Análisis de Ventas

1. **Ventas por Año y Mes**:
   - Se identificaron las ventas brutas mensuales y anuales, permitiendo entender las fluctuaciones de ventas a lo largo del tiempo e identificar los meses más fuertes y los más débiles en términos de ingresos.

2. **Ventas Brutas Medias Mensuales y Anuales**:
   - Las ventas brutas medias se calcularon y se identificaron los meses con mayores ventas promedio, mostrando tendencias estacionales y ayudando a identificar los picos de demanda.

3. **Producto Más Vendido**:
   - Se identificó el producto con mayores ventas en términos monetarios, proporcionando información valiosa sobre cuáles productos tienen mayor aceptación en el mercado.

4. **Producto con Mayor Margen de Ganancia**:
   - Se determinó cuál producto deja más margen en términos monetarios, crucial para tomar decisiones sobre qué productos promocionar más intensamente.

5. **Fecha de Lanzamiento de los Productos**:
   - Se pudo determinar la fecha de lanzamiento de cada producto, útil para correlacionar los lanzamientos con las ventas y evaluar el éxito de los nuevos productos.

6. **Ventas Netas por Año y Margen**:
   - El cálculo de las ventas netas por año, así como el margen numérico y porcentual de cada producto, permitió evaluar la rentabilidad de cada producto y comparar su desempeño a lo largo del tiempo.

7. **Meses con Ventas Brutas Más Fuertes**:
   - Identificación de los meses con mayores ventas brutas, útil para planificar estrategias de marketing y manejo de inventarios.

#### Análisis de Tráfico Web

8. **Ads o Contenidos que Atraen Más Sesiones**:
   - Se analizaron los anuncios o contenidos que atrajeron más sesiones a la página web, ayudando a entender qué estrategias de marketing digital son más efectivas.

9. **Diferencia entre Sesiones y Usuarios**:
   - Se identificó la cantidad de usuarios individuales y se comparó con el número de sesiones, entendiendo la recurrencia de los usuarios y su comportamiento en la web.

10. **Source o Fuente de Usuarios y Sesiones**:
    - Se determinaron las fuentes que trajeron más usuarios y sesiones, clave para enfocar las estrategias de adquisición de usuarios.

11. **Sources o Fuentes que Generan Más Ventas**:
    - Identificación de las fuentes que generaron más ventas, proporcionando información sobre qué canales de marketing son más efectivos en términos de conversión.

12. **Meses que Atraen Más Tráfico**:
    - Se analizaron los meses con más tráfico web, ayudando a identificar patrones de tráfico y a planificar mejor las campañas de marketing.

13. **Dispositivos que Atraen Más Sesiones en el Mes con Más Tráfico**:
    - Análisis de la cantidad de sesiones provenientes de dispositivos móviles versus ordenadores en el mes con más tráfico, proporcionando información sobre el comportamiento del usuario y la necesidad de optimización móvil.

14. **Campañas que Generan Más Margen por Productos**:
    - Se identificaron las campañas que generan más margen por productos, ayudando a enfocar los esfuerzos de marketing en las campañas más rentables.


