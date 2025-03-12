Listar todos los libros disponibles
```sql
SELECT * FROM libros;
```
Buscar libros por género
```sql
SELECT genero FROM libros;
```
Obtener información de un libro por ISBN
```sql
SELECT isbn FROM libros;
```
Contar el número de libros en la biblioteca
```sql
SELECT id, COUNT(*) as total
FROM libros
GROUP BY id;
```
Listar todos los autores
```sql
SELECT * FROM autores;
```
Buscar autores por nombre
```sql
SELECT nombre FROM autores;
```
Obtener todos los libros de un autor específico
```sql
SELECT nombre FROM libros 
wHERE autor = (SELECT nombre FROM autor WHERE nombre = "juan patiño");
```
Listar todas las ediciones de un libro
```sql
# Introduce aquí las consultas.
```
Obtener la última edición de un libro
```sql
# Introduce aquí las consultas.
```
Contar cuántas ediciones hay de un libro específico
```sql
# Introduce aquí las consultas.
```
Listar todas las transacciones de préstamo
```sql
SELECT * FROM prestamos;
```
Obtener los libros prestados actualmente
```sql
SELECT * FROM prestamos;
```
Contar el número de transacciones de un miembro específico
```sql
# Introduce aquí las consultas.
```
Listar todos los miembros de la biblioteca
```sql
# Introduce aquí las consultas.
```
Buscar un miembro por nombre:
```sql
SELECT * FROM usuarios WHERE nombre = 'Juan Pérez';
```
Obtener las transacciones de un miembro específico
```sql
# Introduce aquí las consultas.
```
Listar todos los libros y sus autores
```sql
SELECT l.libro, a.autor
FROM autores 
INNER JOIN libros ON l.id = a.autores;
```
Obtener el historial de préstamos de un libro específico
```sql
# Introduce aquí las consultas.
```
Contar cuántos libros han sido prestados en total
```sql
SELECT id, COUNT(*) as total
FROM prestamos
GROUP BY id;
```
Listar todos los libros junto con su última edición y estado de disponibilidad
```sql
# Introduce aquí las consultas.