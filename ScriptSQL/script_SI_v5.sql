CREATE DATABASE SI;
USE SI;

# Tabelas para as entidades

CREATE TABLE usuario (
    id INT NOT NULL AUTO_INCREMENT,
	nusp VARCHAR(8) NOT NULL,
    email VARCHAR(40) NOT NULL,
    nome VARCHAR(40),
    sobrenome VARCHAR(40),
    vinculo VARCHAR(40),
    PRIMARY KEY(id, nusp, email)
);

CREATE TABLE professor (
    id INT NOT NULL,
    nusp VARCHAR(8) NOT NULL,
    email VARCHAR(40) NOT NULL,
    nome VARCHAR(40),
    sobrenome VARCHAR(40),
    link_lattes VARCHAR(40),
    instituicao VARCHAR(40),
    departamento VARCHAR(40),
    laboratorio VARCHAR(40),

    FOREIGN KEY(id, nusp, email)
        REFERENCES usuario(id, nusp, email)
        ON UPDATE CASCADE

);

CREATE TABLE assistente (
    id INT NOT NULL,
    nusp VARCHAR(8) NOT NULL,
    email VARCHAR(40) NOT NULL,
    nome VARCHAR(40),
    sobrenome VARCHAR(40),
    link_lattes VARCHAR(40),
    instituicao VARCHAR(40),
    departamento VARCHAR(40),
    laboratorio VARCHAR(40),

    FOREIGN KEY(id, nusp, email)
        REFERENCES usuario(id, nusp, email)
        ON UPDATE CASCADE
);

CREATE TABLE aluno (
    id INT NOT NULL,
    nusp VARCHAR(8) NOT NULL,
    email VARCHAR(40) NOT NULL,
    nome VARCHAR(40),
    sobrenome VARCHAR(40),
    link_lattes VARCHAR(40),
    instituicao VARCHAR(40),
    codigo_CV VARCHAR(20),
    codigo_hist VARCHAR(20),

    FOREIGN KEY(id, nusp, email)
        REFERENCES usuario(id, nusp, email)
        ON UPDATE CASCADE
);

CREATE TABLE lab (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(40),
    departamento VARCHAR(40),
    descricao VARCHAR(1000),
    link_site VARCHAR(40),

    PRIMARY KEY(id)
);

CREATE TABLE projeto (
    id INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(100),
    descricao VARCHAR(1000),
    palavra_chave1 VARCHAR(20),
    palavra_chave2 VARCHAR(20),
    palavra_chave3 VARCHAR(20),
    semestre_inicio INT,
    semestre_fim INT,
    id_lab INT,
    patrocinador VARCHAR(20),

    PRIMARY KEY(id),

    FOREIGN KEY(id_lab)
        REFERENCES lab(id)
);

# Tabelas para os relacionamentos

CREATE TABLE cria (
    id_professor INT NOT NULL,
    id_projeto INT NOT NULL,

    FOREIGN KEY(id_professor)
        REFERENCES professor(id),

    FOREIGN KEY(id_projeto)
        REFERENCES projeto(id)
);

CREATE TABLE candidata (
    id_aluno INT NOT NULL,
    id_projeto INT NOT NULL,

    FOREIGN KEY(id_aluno)
        REFERENCES aluno(id),

    FOREIGN KEY(id_projeto)
        REFERENCES projeto(id)
);

CREATE TABLE mantem (
    id_professor INT NOT NULL,
    id_lab INT NOT NULL,

    FOREIGN KEY(id_professor)
        REFERENCES professor(id),

    FOREIGN KEY(id_lab)
        REFERENCES lab(id)
);

CREATE TABLE pertence (
    id_assistente INT NOT NULL,
    id_lab INT NOT NULL,

    FOREIGN KEY(id_assistente)
        REFERENCES assistente(id),

    FOREIGN KEY(id_lab)
        REFERENCES lab(id)
);

CREATE TABLE vincula (
    id_professor INT NOT NULL,
    id_aluno INT NOT NULL,
    id_projeto INT NOT NULL,
    id_assistente INT,
    id_lab INT,

    FOREIGN KEY(id_professor)
        REFERENCES professor(id),

    FOREIGN KEY(id_aluno)
        REFERENCES aluno(id),

    FOREIGN KEY(id_projeto)
        REFERENCES projeto(id),

    FOREIGN KEY(id_assistente)
        REFERENCES assistente(id),

    FOREIGN KEY(id_lab)
        REFERENCES lab(id)
);

CREATE TABLE mensagem (
    id_envia INT NOT NULL,
    id_recebe INT NOT NULL,
    id_projeto INT NOT NULL,
    titulo VARCHAR(40),
    texto VARCHAR(1000),
    data DATETIME,

    FOREIGN KEY(id_envia)
        REFERENCES usuario(id),

    FOREIGN KEY(id_recebe)
        REFERENCES usuario(id),

    FOREIGN KEY(id_projeto)
        REFERENCES projeto(id)
);