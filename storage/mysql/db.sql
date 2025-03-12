    CREATE DATABASE biblioteca_campus;

    USE biblioteca_campus;

    CREATE TABLE libros(
        id INT AUTO_INCREMENT PRIMARY KEY,
        titulo VARCHAR(12) NOT NULL,
        isbn VARCHAR(10) NOT NULL, 
        descripcion VARCHAR(50),
        genero VARCHAR(10) NOT NULL,
        disponibilidad BOOLEAN NOT NULL
    );

    CREATE TABLE miembros (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(50) NOT NULL,
        email VARCHAR(100) UNIQUE NOT NULL,
        fecha_registro DATE,
        edad INT
    );
    CREATE TABLE autores(
        id INT AUTO_INCREMENT PRIMARY KEY ,
        nombre VARCHAR(20)
    );

    CREATE TABLE prestamos(
        id INT AUTO_INCREMENT PRIMARY KEY ,
        fecha DATE,
        id_libro INT,
        id_miembros INT,
        FOREIGN KEY (id_libro) REFERENCES libros(id),
        FOREIGN KEY (id_miembros) REFERENCES miembros(id)
    );

    CREATE TABLE devolucion(
        id INT AUTO_INCREMENT PRIMARY KEY ,
        fecha DATE,
        id_prestamo INT,
        FOREIGN KEY (id_prestamo) REFERENCES prestamos(id)
    );

    CREATE TABLE editores(
        id INT AUTO_INCREMENT PRIMARY KEY ,
        nombre VARCHAR(20)
    );

    CREATE TABLE libro_autor(
        id INT AUTO_INCREMENT PRIMARY KEY,
        id_autores INT,
        id_libros INT,
        id_publicaciones INT,
        FOREIGN KEY (id_publicaciones) REFERENCES publicaciones(id),
        FOREIGN KEY (id_autores) REFERENCES autores(id),
        FOREIGN KEY (id_libros) REFERENCES libros(id)
    );

    CREATE TABLE publicaciones(
        id INT AUTO_INCREMENT PRIMARY KEY ,
        fecha DATE,
        nombre VARCHAR(20),
        id_editores INT,
        FOREIGN KEY (id_editores) REFERENCES editores(id)
    );
