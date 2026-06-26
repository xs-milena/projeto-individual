-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql server
*/

CREATE DATABASE projeto_individual;

USE projeto_individual;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE questionario (
	fk_usuario INT,
    FOREIGN KEY (fk_usuario) REFERENCES usuario(id),
    pergunta INT,
    alternativa VARCHAR(50)
);

CREATE TABLE quiz (
	fk_usuario INT,
    FOREIGN KEY (fk_usuario) REFERENCES usuario(id),
    pergunta INT,
    acertou INT
);