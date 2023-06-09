
-- TRABALHO DE BANCO

CREATE DATABASE sistema_hospitalar; -- CRIA BANCO
USE sistema_hospitalar; -- USANDO O BANCO

-- CRIANDO TABELA
CREATE TABLE Paciente(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(100),
    telefone TEXT,
    data_nascimento DATE
);
-- INSERINDO
INSERT INTO Paciente(nome, endereco, telefone, data_nascimento)
VALUE 
	("Sameque", "Rua travessa jose campos", "7499918989", "2001-12-02"),
    ("Davi", "Casimba", "1141412312", "2001-11-20"),
    ("Wiliam", "Rua do centro", "7498123456", "1998-06-12");

CREATE TABLE Medico(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
    crm VARCHAR(20) NOT NULL,
    especialidade VARCHAR(23),
    telefone TEXT,
    data_nascimento DATE
);

INSERT INTO Medico(nome, crm, especialidade, telefone, data_nascimento)
VALUE 
	("Lucio", "4321RF", "Rua trava campos", "749992229", "2000-01-02"),
    ("Luiz Eduardo", "1111GW","Souto Soares", "999992312", "2003-12-09"),
    ("Luciano", "2222FG","Uibai", "7498121116", "1999-09-07"); 
CREATE TABLE Enfermeiro(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
coren VARCHAR(20) NOT NULL,
telefone TEXT,
data_nascimento DATE
);
INSERT INTO Enfermeiro(nome, coren, telefone, data_nascimento)
VALUE 
	("Pedro", "4321RF","749992229", "2000-01-02"),
    ("Luiz Eduardo", "1111GW", "999992312", "2003-12-09"),
    ("Tigas", "2222FG","Uibai", "1999-09-07"); 
CREATE TABLE Triagem(
id INT AUTO_INCREMENT PRIMARY KEY,
id_paciente INT NOT NULL,
id_enfermeiro INT NOT NULL,
descricao VARCHAR(100) NOT NULL,
FOREIGN KEY(id_paciente) REFERENCES Pacientes(id), -- CHAVE ESTRANGEIRA
FOREIGN KEY(id_enfermeiro) REFERENCES Enfermeiro(id)
);
CREATE TABLE Funcionarios(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50),
id_departamento INT NOT NULL,
id_cargo INT NOT NULL
);


