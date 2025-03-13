INSERT INTO autores(id,nombre) VALUES
(1,"gabriel garcia marquez"),
(2,"rowland");

INSERT INTO libros(id,titulo,genero,isbn,disponibilidad) VALUES
(1,"cien años de soledad","realismo magico","12345678",TRUE),
(2,"Harry popoter","accion","72830954",TRUE);

INSERT INTO libro_autor(id,id_libro,id_autores) VALUES
(1,1,1),
(2,2,2);

INSERT INTO miembros(id,nombre,email) VALUES
(1,"Juan Pérez","juanperez123@gmail.com"),
(2,"maria ramirez","mari@łł€jhags.com");

INSERT INTO transaccion(id,id_libro,id_miembros,prestamo,devolucion) VALUES
(1,1,1,"2025-03-01",NULL),
(2,2,2,"2025-02-01",NULL);

INSERT INTO editores(id,id_libro,editor,fechapublicacion) VALUES
(1,1,"palito juan","2025-03-01"),
(2,2,"pepganga","2025-02-01");

