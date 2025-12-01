-- 1. Criação do Banco de Dados
CREATE DATABASE EventTableManager;

-- 2. Selecionar o Banco para usar
USE EventTableManager;

-- 3. Criação das Tabelas (Na ordem correta para não dar erro de chave)

CREATE TABLE Evento (
    ID_Evento INT PRIMARY KEY,
    Nome VARCHAR(100),
    Data DATE,
    Local VARCHAR(100)
);

CREATE TABLE Grupo_Social (
    ID_Grupo INT PRIMARY KEY,
    Nome_Grupo VARCHAR(50)
);

CREATE TABLE Restricao (
    ID_Restricao INT PRIMARY KEY,
    Tipo VARCHAR(50)
);

CREATE TABLE Convidado (
    ID_Convidado INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Status_RSVP VARCHAR(20),
    ID_Grupo INT,
    FOREIGN KEY (ID_Grupo) REFERENCES Grupo_Social(ID_Grupo)
);

CREATE TABLE Mesa (
    Numero_Mesa INT PRIMARY KEY,
    Capacidade INT,
    Localizacao_Salao VARCHAR(100),
    ID_Evento INT,
    FOREIGN KEY (ID_Evento) REFERENCES Evento(ID_Evento)
);

CREATE TABLE Convidado_Restricao (
    ID_Convidado INT,
    ID_Restricao INT,
    PRIMARY KEY (ID_Convidado, ID_Restricao),
    FOREIGN KEY (ID_Convidado) REFERENCES Convidado(ID_Convidado),
    FOREIGN KEY (ID_Restricao) REFERENCES Restricao(ID_Restricao)
);

CREATE TABLE Alocacao (
    ID_Alocacao INT PRIMARY KEY,
    ID_Convidado INT,
    Numero_Mesa INT,
    ID_Evento INT,
    FOREIGN KEY (ID_Convidado) REFERENCES Convidado(ID_Convidado),
    FOREIGN KEY (Numero_Mesa) REFERENCES Mesa(Numero_Mesa),
    FOREIGN KEY (ID_Evento) REFERENCES Evento(ID_Evento)
);