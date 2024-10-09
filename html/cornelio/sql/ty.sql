CREATE DATABASE pokemon_shiny;

USE pokemon_shiny;

CREATE TABLE captura_shiny (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_pokemon VARCHAR(100) NOT NULL,
    generacion VARCHAR(50) NOT NULL,
    metodo_captura VARCHAR(255) NOT NULL,
    porcentaje_aparicion DECIMAL(5,2) NOT NULL
);
