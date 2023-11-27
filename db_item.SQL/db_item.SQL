-- apaga o banco de dados caso ele exista.
DROP DATABASE IF EXISTS db_items;

-- Criar o banco de dados com atenção à tabela de caracteres.
CREATE DATABASE db_items 
	CHARACTER SET utf8mb4 
	COLLATE  utf8mb4_general_ci; 
    
-- Selecionar o banco de dados.


USE db_items;    
-- Criar a tabela 'user' conforme o modelo
CREATE TABLE user (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_name VARCHAR(127) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    user_password VARCHAR(63) NOT NULL,
    user_birth DATE,
    user_status ENUM('on', 'off') DEFAULT 'on'
);

-- Insere dados em 'user'.
INSERT INTO user (user_name, user_email, user_password, user_birth) VALUE 
('Edson da Silva','edson.silva@gmail.com','123','2000-2-12'), 
('Marineuza Siriliano','mari@neuza.com','123','1990-6-26'),
('Elton Jhon','elton@jhon.com','123','2003-12-1');

-- Lista a inserção em 'user'.

SELECT * FROM user WHERE user_status = 'on' ORDER BY 'user_name';

SELECT * FROM user;

-- Apaga o 'Edson'

UPDATE user 
SET user_status = 'off' WHERE user_id = '1';
    