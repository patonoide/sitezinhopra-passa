-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE USUARIO (
USUARIO SERIAL PRIMARY KEY,
SENHA VARCHAR(50) NOT NULL,
EMAIL VARCHAR(100) NOT NULL,
LOGIN VARCHAR(20) NOT NULL
);



CREATE TABLE CATEGORIA (
CATEGORIA SERIAL PRIMARY KEY,
NOME VARCHAR(30) NOT NULL
);

CREATE TABLE SERIE (
SERIE SERIAL PRIMARY KEY,
TEMPORADA CHAR(2) NOT NULL,
NOME VARCHAR(50) NOT NULL,
TEMPO VARCHAR(3) NOT NULL,
DESCRICAO VARCHAR(1000) NOT NULL,
NOTA CHAR(1) NOT NULL,
YOUTUBE VARCHAR(50) NOT NULL,
EPISODIO CHAR(2) NOT NULL,
IMDB VARCHAR(30) NOT NULL,
CATEGORIA SERIAL NOT NULL,
FOREIGN KEY(CATEGORIA) REFERENCES CATEGORIA (CATEGORIA)
);

CREATE TABLE FILME (
FILME SERIAL PRIMARY KEY,
DESCRICAO VARCHAR(1000) NOT NULL,
NOTA CHAR(1) NOT NULL,
TEMPO VARCHAR(3) NOT NULL,
YOUTUBE VARCHAR(50) NOT NULL,
NOME VARCHAR(50) NOT NULL,
IMDB VARCHAR(30) NOT NULL,
CATEGORIA SERIAL NOT NULL,
FOREIGN KEY(CATEGORIA) REFERENCES CATEGORIA (CATEGORIA)
);

CREATE TABLE ASSISTIS (
SERIE SERIAL NOT NULL,
USUARIO SERIAL NOT NULL,
FOREIGN KEY(USUARIO) REFERENCES USUARIO (USUARIO),
FOREIGN KEY(SERIE) REFERENCES SERIE(SERIE)
);

CREATE TABLE ASSISTIF (
FILME SERIAL NOT NULL,
USUARIO SERIAL NOT NULL,
FOREIGN KEY(USUARIO) REFERENCES USUARIO (USUARIO),
FOREIGN KEY(FILME) REFERENCES FILME(FILME)
);

