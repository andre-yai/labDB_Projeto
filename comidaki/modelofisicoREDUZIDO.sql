-- Projeto fase 3--
-- Geração de Modelo físico Reduzido
-- Sql ANSI 2003 - brModelo.

create database comidaki;
use database comidaaki;

CREATE TABLE Usuario (
Senha VARCHAR(50) NOT NULL,
Nome VARCHAR(255) NOT NULL,
Email VARCHAR(50) NOT NULL,
CPF CHAR(11) PRIMARY KEY
);

CREATE TABLE Cliente (
CPF CHAR(11) PRIMARY KEY,
FOREIGN KEY(CPF) REFERENCES Usuario(CPF)
);

CREATE TABLE Franquia (
Nome VARCHAR(50) NOT NULL,
Descricao VARCHAR(255),
Faixa_de_preco VARCHAR(50) NOT NULL,
Tempo_de_entrega_estimada INTEGER NOT NULL,
Custo_de_entrega_km INTEGER NOT NULL,
Raio_de_entrega INTEGER NOT NULL,
Nota INTEGER,
CNPJ CHAR(14),
CNPJ_restaurante CHAR(14),
PRIMARY KEY(CNPJ)
);

CREATE TABLE Endereco (
Logradouro VARCHAR(255) NOT NULL,
CEP CHAR(8),
Numero INTEGER,
Complemento VARCHAR(50),
Cidade VARCHAR(50) NOT NULL,
Estado VARCHAR(50) NOT NULL,
Latitude Numeric,
Longitude Numeric,
PRIMARY KEY(CEP,Numero,Complemento)
);

CREATE TABLE Endereco_Cliente (
CEP CHAR(8) NOT NULL,
Numero INTEGER NOT NULL,
Complemento VARCHAR(50) NOT NULL,
CPF CHAR(11) NOT NULL,
PRIMARY KEY(CEP, Numero, Complemento),
FOREIGN KEY(CEP, Numero, Complemento) REFERENCES Endereco(CEP,Numero,Complemento),
FOREIGN KEY(CPF) REFERENCES Cliente(CPF)
);

CREATE TABLE Endereco_Franquia (
CEP CHAR(8) NOT NULL,
Numero INTEGER NOT NULL,
Complemento VARCHAR(50) NOT NULL,
CNPJ CHAR(14) NOT NULL,
PRIMARY KEY(CEP, Numero, Complemento),
FOREIGN KEY(CEP, Numero, Complemento) REFERENCES Endereco(CEP,Numero,Complemento),
FOREIGN KEY(CNPJ) REFERENCES Franquia(CNPJ)
);

CREATE TABLE Telefone (
Telefone VARCHAR(12) NOT NULL,
CPF VARCHAR(11),
PRIMARY KEY(Telefone, CPF),
FOREIGN KEY(CPF) REFERENCES Usuario(CPF)
);

CREATE TABLE Pedido (
ID INTEGER PRIMARY KEY,
Status VARCHAR(50) NOT NULL,
Data TIMESTAMP NOT NULL,
Atualizado_em TIMESTAMP,
Valor Numeric NOT NULL,
Quantidade INTEGER NOT NULL,
CPF VARCHAR(11),
CNPJ CHAR(14),
CEP CHAR(8),
Numero INTEGER,
Complemento VARCHAR(50),
FOREIGN KEY(CPF) REFERENCES Cliente(CPF)
FOREIGN KEY(CNPJ) REFERENCES Franquia(CNPJ),
FOREIGN KEY(CEP,Numero,Complemento) REFERENCES Endereco_Cliente(CEP,Numero,Complemento),
CHECK (Valor > 0),
CHECK (Quantidade > 0)
);

CREATE TABLE Restaurante (
CNPJ CHAR(14) PRIMARY KEY,
Nome VARCHAR(50) NOT NULL
);

CREATE TABLE Tipo_de_culinaria (
ID INTEGER PRIMARY KEY,
Nome VARCHAR(50) NOT NULL
);

CREATE TABLE franquia_tem_tipoculinario (
CNPJ CHAR(14),
Nome VARCHAR(50),
PRIMARY KEY(CNPJ,Nome),
FOREIGN KEY(CNPJ) REFERENCES Franquia(CNPJ),
FOREIGN KEY(Nome) REFERENCES Tipo_de_culinaria(Nome)
);

CREATE TABLE Ingrediente (
ID INTEGER PRIMARY KEY,
Nome VARCHAR(50) NOT NULL,
Tipo VARCHAR(50)
);

CREATE TABLE Prato (
Preco Numeric NOT NULL,
Valor_calorico INTEGER,
Nome VARCHAR(50) NOT NULL,
Descricao  VARCHAR(255),
Imagem VARCHAR(50),
ID INTEGER,
CNPJ CHAR(14),
PRIMARY KEY(ID),
FOREIGN KEY(CNPJ) REFERENCES Franquia(CNPJ),
);

CREATE TABLE e_composto_por (
ID_Prato INTEGER,
ID_Ingrediente INTEGER,
PRIMARY KEY(ID_Prato, ID_Ingrediente), 
FOREIGN KEY(ID_Ingrediente) REFERENCES Ingrediente(ID),
FOREIGN KEY(ID_Prato) REFERENCES Prato(ID)
);

CREATE TABLE Horario_de_funcionamento (
Dia VARCHAR(50) NOT NULL,
Hora VARCHAR(50) NOT NULL,
CNPJ CHAR(14),
PRIMARY KEY(CNPJ),
FOREIGN KEY(CNPJ) REFERENCES Franquia(CNPJ)
);

CREATE TABLE e_subtipo (
Nome VARCHAR(50) NOT NULL,
Nome_subtipo VARCHAR(50) NOT NULL,
ID INTEGER,
ID_subtipo INTEGER,
PRIMARY KEY(ID, ID_subtipo),
FOREIGN KEY(ID) REFERENCES Tipo_de_culinaria(ID),
FOREIGN KEY(ID_subtipo) REFERENCES Tipo_de_culinaria(ID)
);

CREATE TABLE Avaliacao (
Replica VARCHAR(255),
Data TIMESTAMP,
Comentario VARCHAR(255),
Nota INTEGER NOT NULL,
CPF VARCHAR(11),
CNPJ CHAR(14),
PRIMARY KEY (CNPJ, CPF, Data),
FOREIGN KEY(CPF) REFERENCES Cliente(CPF),
FOREIGN KEY(CNPJ) REFERENCES Franquia(CNPJ)
);

CREATE TABLE Administrador_de_restaurante (
CPF VARCHAR(11),
CNPJ CHAR(14),
PRIMARY KEY (CPF),
FOREIGN KEY(CPF) REFERENCES Usuario(CPF),
FOREIGN KEY(CNPJ) REFERENCES Franquia(CNPJ)
);

CREATE TABLE pedido_tem_prato (
Quantidade INTEGER NOT NULL,
ID_pedido INTEGER NOT NULL,
ID_prato INTEGER NOT NULL,
PRIMARY KEY (ID_pedido, ID_prato),
FOREIGN KEY(ID_pedido) REFERENCES Pedido(ID),
FOREIGN KEY(ID_prato) REFERENCES Prato(ID),
CHECK (Quantidade > 0)
);

CREATE TABLE cliente_tem_endereco (
CPF VARCHAR(12),
CEP CHAR(8),
Numero INTEGER,
Complemento VARCHAR(50),
PRIMARY KEY(cpf,CEP,Numero,Complemento),
FOREIGN KEY(CPF) REFERENCES Cliente (CPF),
FOREIGN KEY(CEP,Numero,Complemento) REFERENCES Endereco_Cliente(CEP,Numero,Complemento)
);

CREATE TABLE franquia_tem_endereco (
CNPJ CHAR(14),
CEP CHAR(8),
Numero INTEGER,
Complemento VARCHAR(50),
PRIMARY KEY(CNPJ,CEP,Numero,Complemento),
FOREIGN KEY(CNPJ) REFERENCES Franquia (CNPJ),
FOREIGN KEY(CEP,Numero,Complemento) REFERENCES Endereco_Franquia(CEP,Numero,Complemento)
);

ALTER TABLE Franquia ADD FOREIGN KEY(CNPJ_restaurante) REFERENCES Restaurante(CNPJ);

Create View getMenuPorRestaurante as
Select p.nome, p.preco, p.descricao, f.cnpj
From franquia f, prato p
Where f.cnpj = p.cnpj;

Create View InfoFranquias As
Select f.nome, f.tempo_de_entrega_estimada, f.faixa_de_preco, f.nota, ftt.nome as tipoCulinario
From franquia f, franquia_tem_tipoculinario ftt
Where f.cnpj = ftt.cnpj;

