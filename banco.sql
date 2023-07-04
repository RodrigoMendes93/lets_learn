CREATE DATABASE lets_learn;

USE lets_learn;

CREATE TABLE usuario(
nome VARCHAR(50),
id_email VARCHAR(50),
senha VARCHAR(20),
PRIMARY KEY (id_email)
);

INSERT INTO usuario VALUES ('Fábio', 'junhu@junhung.com', '1234');