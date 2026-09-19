USE mydatabase;

-- 1. Crear la tabla antes de insertar para evitar el error de "Table doesn't exist"
CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    password VARCHAR(255),
    username VARCHAR(255)
);

-- 2. Insertar los usuarios coincidiendo exactamente con la entidad Java
INSERT IGNORE INTO user (id, username, password, email) 
VALUES (1, 'admin', '123', 'admin@veterinaria.cl');

INSERT IGNORE INTO user (id, username, password, email) 
VALUES (2, 'asistente', '123', 'asistente@veterinaria.cl');

INSERT IGNORE INTO user (id, username, password, email) 
VALUES (3, 'cliente', '123', 'cliente@veterinaria.cl');