create database FMS;

use FMS;

CREATE TABLE empresa (
    id_empresa INT AUTO_INCREMENT PRIMARY KEY,
    razao_social VARCHAR(150),
    cnpj VARCHAR(14) UNIQUE
);

CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150),
    email VARCHAR(150),
    senha_hash VARCHAR(255),
    fk_empresa INT,
    fk_usuario INT,
    FOREIGN KEY (fk_empresa) REFERENCES empresa(id_empresa),
    FOREIGN KEY (fk_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE bloco (
    id_bloco INT AUTO_INCREMENT PRIMARY KEY,
    fk_empresa INT,
    nome_ambiente VARCHAR(50),
    FOREIGN KEY (fk_empresa) REFERENCES empresa(id_empresa)
);

CREATE TABLE sensor (
    id_sensor INT AUTO_INCREMENT PRIMARY KEY,
    fk_bloco INT,
    status VARCHAR(20),
    FOREIGN KEY (fk_bloco) REFERENCES bloco(id_bloco)
);

CREATE TABLE leitura (
    id_leitura INT AUTO_INCREMENT PRIMARY KEY,
    fk_sensor INT,
    data DATETIME DEFAULT CURRENT_TIMESTAMP,
    leitura TINYINT(1),
    FOREIGN KEY (fk_sensor) REFERENCES sensor(id_sensor)
);