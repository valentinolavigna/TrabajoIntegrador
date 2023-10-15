# Trailerflix
A continuación se detallan los endpoints creados

## Actores
Endpoints relacionados a la tabla "actores"

### Obtener todos los actores
- **Método:** GET
- **URL:** [http://localhost:3000/api/actores]
- **Descripción:** Obtenemos una lista de todos los actores

### Obtener actor por ID
- **Método:** GET
- **URL:** [http://localhost:3000/api/actores/7]
- **Descripción:** Obtenemos un actor enviando su ID

## Categorias
Endpoints relacionados con la tabla "categoria"

### Obtener todas las categorías
- **Método:** GET
- **URL:** [http://localhost:3000/api/categorias]
- **Descripción:** Obtenemos una lista de todas las categorías

### Obtener categoría por ID
- **Método:** GET
- **URL:** [http://localhost:3000/api/categorias/3]
- **Descripción:** Obtenemos una categoría enviando su ID

## Géneros
Endpoints relacionados con la tabla "genero"

### Obtener todos los géneros
- **Método:** GET
- **URL:** [http://localhost:3000/api/generos]
- **Descripción:** Obtenemos una lista de todos los géneros

### Obtener género por ID
- **Método:** GET
- **URL:** [http://localhost:3000/api/generos/3]
- **Descripción:** Obtenemos un género enviando su ID

## Catálogos
Endpoints relacionados con la tabla "catalogo"

### Obtener todos los catálogos
- **Método:** GET
- **URL:** [http://localhost:3000/api/catalogo]
- **Descripción:** Obtenemos el listado de todos los catálogos

### Obtener catálogo por ID
- **Método:** GET
- **URL:** [http://localhost:3000/api/catalogo/1]
- **Descripción:** Obtenemos un catálogo enviando su ID

### Buscar catálogo por nombre (título del catálogo)
- **Método:** GET
- **URL:** [http://localhost:3000/api/catalogo/nombre/on%20brea] (/catalogo/nombre/:nombre)
- **Descripción:** Realiza una búsqueda por nombre total o parcial sobre la tabla "catalogo" en el campo "título"

### Buscar catálogo por género
- **Método:** GET
- **URL:** [http://localhost:3000/api/catalogo/genero/rama] (/catalogo/genero/:genero)
- **Descripción:** Realiza una búsqueda sobre los catálogos filtrando total o parcialmente por el nombre de sus géneros asociados

### Buscar catálogo por categoría
- **Método:** GET
- **URL:** [http://localhost:3000/api/catalogo/categoria/erie] (/catalogo/categoria/:categoria)
- **Descripción:** Realiza una búsqueda sobre los catálogos filtrando total o parcialmente por el nombre de sus categorías asociadas
