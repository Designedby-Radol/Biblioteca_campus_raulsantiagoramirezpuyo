    CREATE DATABASE biblioteca_campus;

    USE biblioteca_campus;

    CREATE TABLE libros(
        id INT AUTO_INCREMENT PRIMARY KEY,
        titulo VARCHAR(50) NOT NULL,
        isbn VARCHAR(10) NOT NULL, 
        descripcion VARCHAR(50),
        genero VARCHAR(50) NOT NULL,
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
        nombre VARCHAR(50)
    );

    CREATE TABLE transaccion(
        id INT AUTO_INCREMENT PRIMARY KEY ,
        fecha DATE,
        id_libro INT,
        id_miembros INT,
        prestamo DATE,
        devolucion DATE,
        FOREIGN KEY (id_libro) REFERENCES libros(id),
        FOREIGN KEY (id_miembros) REFERENCES miembros(id)
    );

    CREATE TABLE editores(
        id INT AUTO_INCREMENT PRIMARY KEY ,
        nombre VARCHAR(50),
        editor VARCHAR(50),
        id_libro INT,
        fechapublicacion DATE,
        FOREIGN KEY (id_libro) REFERENCES libros(id)
    );

    CREATE TABLE libro_autor(
        id INT AUTO_INCREMENT PRIMARY KEY,
        id_autores INT,
        id_libro INT,
        FOREIGN KEY (id_autores) REFERENCES autores(id),
        FOREIGN KEY (id_libro) REFERENCES libros(id)
    );
