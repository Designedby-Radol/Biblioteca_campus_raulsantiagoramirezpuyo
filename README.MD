Listar todos los libros disponibles
```sql
SELECT titulo FROM libros WHERE disponibilidad = TRUE;
```
Buscar libros por género
```sql
SELECT titulo FROM libros WHERE genero = "accion";
```
Obtener información de un libro por ISBN
```sql
SELECT isbn FROM libros WHERE isbn = "12345678"; 
```
Contar el número de libros en la biblioteca
```sql
SELECT COUNT(*) AS total FROM libro;
```
Listar todos los autores
```sql
SELECT nombre FROM autores;
```
Buscar autores por nombre
```sql
SELECT nombre FROM autores WHERE nombre = "gabriel garcia marquez";
```
Obtener todos los libros de un autor específico
```sql
SELECT L.*
FROM libros L
JOIN libro_autor LA ON L.id = LA.id_libro
JOIN autores A ON LA.id_autores = A.id
WHERE A.nombre = "gabriel garcia marquez";
```
Listar todas las ediciones de un libro
```sql
SELECT editor FROM editores WHERE id = 1 
```
Obtener la última edición de un libro
```sql
SELECT * FROM editores
WHERE id_libro = 1
ORDER BY fechapublicacion DESC 
LIMIT 1;
```
Contar cuántas ediciones hay de un libro específico
```sql
SELECT COUNT(*) AS total FROM editores WHERE id_libro = 1;
```
Listar todas las transacciones de préstamo
```sql
SELECT * FROM transaccion;
```
Obtener los libros prestados actualmente
```sql
SELECT L.* 
FROM libros L
JOIN transaccion T ON L.id = T.id_libro
WHERE T.devolucion = FALSE;
```
Contar el número de transacciones de un miembro específico
```sql
SELECT COUNT(*) AS total
FROM transaccion
WHERE id_miembros = 1;
```
Listar todos los miembros de la biblioteca
```sql
SELECT * FROM miembros;
```
Buscar un miembro por nombre:
```sql
SELECT * FROM miembros WHERE nombre = "Juan Pérez";
```
Obtener las transacciones de un miembro específico
```sql
SELECT * FROM transaccion WHERE id_miembros = 1;
```
Listar todos los libros y sus autores
```sql
SELECT L.titulo, A.nombre
FROM libros L
JOIN libro_autor LA ON L.id = LA.id_libro
JOIN autores A ON LA.id_autores = A.id;
```
Obtener el historial de préstamos de un libro específico
```sql
SELECT * FROM transaccion WHERE id_libro = 1
```
Contar cuántos libros han sido prestados en total
```sql
SELECT COUNT(*) as total
FROM transaccion;
```
Listar todos los libros junto con su última edición y estado de disponibilidad
```sql
SELECT L.titulo, L.disponibilidad, E.fechapublicacion, E.editor
FROM libro L 
LEFT JOIN edicion E ON L.id = E.id_libro
    WHERE MAX(fechapublicacion)
    FROM editores
    WHERE id_libro = L.id;
```
