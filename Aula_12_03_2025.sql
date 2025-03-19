medicos
create database clinica;
use clinica;

CREATE TABLE Ambulatorios (
			nroa		    integer,
			andar		    numeric(3) NOT NULL,
			capacidade      smallint,    
			PRIMARY KEY(nroa) 	
);

CREATE TABLE Medicos (
	codm		      integer,
	nome		      varchar(40) NOT NULL,
	idade            smallint    NOT NULL,
	especialidade    char(20), 
	CPF              numeric(11) UNIQUE, 
	cidade           varchar(30),  
	nroa             integer,
   PRIMARY KEY(codm)	
);

ALTER TABLE Medicos ADD FOREIGN KEY (nroa) 
REFERENCES ambulatorios(nroa);

CREATE TABLE Pacientes (
	codp INTEGER,
    nome varchar(40) not null,
    idade smallint,
    cidade char(30),
    cpf numeric(11) unique,
    doenca varchar(40) not null,
    PRIMARY KEY(codp)
);

CREATE TABLE Funcionarios (
	codf INTEGER, 
    nome varchar(40) NOT NULL, 
    idade smallint, 
    CPF numeric(11) UNIQUE, 
    cidade varchar(30), 
    salario numeric(10), 
    cargo varchar(20),
    PRIMARY KEY(codf)
);

CREATE TABLE Consultas (
	codm INTEGER, 
    codp INTEGER, 
    data date, 
    hora time
);

ALTER TABLE Consultas ADD FOREIGN KEY (codm) 
REFERENCES medicos(codm);

ALTER TABLE Consultas ADD FOREIGN KEY (codp) 
REFERENCES pacientes(codp);

-- INSERTS DE AMBULATÓRIO --
INSERT INTO ambulatorios (nroa, andar, capacidade)
VALUES (1,1,30);

INSERT INTO ambulatorios (nroa, andar, capacidade)
VALUES(2,1,50);

INSERT INTO ambulatorios (nroa, andar, capacidade)
VALUES(3,2,40);

INSERT INTO ambulatorios (nroa, andar, capacidade)
VALUES (4,2,25);

INSERT INTO ambulatorios (nroa, andar, capacidade)
VALUES (5,2,55);

-- INSERT DE MÉDICOS -- 
           
INSERT INTO Medicos 
    (codm, nome, idade, especialidade, 
     CPF, cidade,nroa)
    VALUES (1,
'Joao',
40,
'ortopedia',
10000100000,
'Florianopolis',
1);

INSERT INTO Medicos 
    (codm, nome, idade, especialidade, 
     CPF, cidade,nroa)
    VALUES (2,
'Maria',
42,
'traumatologia',
10000110000,
'Blumenau',
2);

INSERT INTO Medicos 
    (codm, nome, idade, especialidade, 
     CPF, cidade,nroa)
    VALUES (3,
'Pedro',
51,
'pediatria',
11000100000,
'São José',
2);

INSERT INTO Medicos 
    (codm, nome, idade, especialidade, 
     CPF, cidade,nroa)
    VALUES (4,
'Carlos',
28,
'ortopedia',
11000110000,
'Joinville',
5);

INSERT INTO Medicos 
    (codm, nome, idade, especialidade, 
     CPF, cidade,nroa)
    VALUES (5,
'Marcia',
33,
'neurologia',
11000111000,
'Biguacu',
3);

INSERT INTO Pacientes (codp, nome, idade, cidade, cpf, doenca) VALUES
(4, 'Ana Rodrigues', 28, 'Belo Horizonte', '45678901234', 'Gripe'),
(5, 'Fernando Oliveira', 55, 'Porto Alegre', '56789012345', 'Artrite'),
(6, 'Juliana Santos', 33, 'Recife', '67890123456', 'Rinite'),
(7, 'Ricardo Silva', 40, 'Brasília', '78901234567', 'Enxaqueca'),
(8, 'Camila Souza', 22, 'Manaus', '89012345678', 'Sinusite'),
(9, 'Paulo Costa', 48, 'Fortaleza', '90123456789', 'Colesterol'),
(10, 'Mariana Lima', 37, 'Curitiba', '01234567890', 'Hipotireoidismo'),
(11, 'Gustavo Pereira', 29, 'Belém', '12345678901', 'Asma'),
(12, 'Luciana Almeida', 41, 'Salvador', '23456789012', 'Diabetes'),
(13, 'Daniel Mendes', 50, 'São Paulo', '34567890123', 'Hipertensão');

-- Inserir dados na tabela Funcionarios
INSERT INTO Funcionarios (codf, nome, idade, cpf, cidade, salario, cargo) VALUES
(1, 'Aline Santos', 30, '23456789012', 'Belo Horizonte', 5500.00, 'Médico'),
(2, 'Roberto Oliveira', 42, '34567890123', 'Porto Alegre', 4300.00, 'Enfermeiro'),
(3, 'Tatiane Lima', 27, '45678901234', 'Recife', 3200.00, 'Recepcionista'),
(4, 'Renato Costa', 35, '56789012345', 'Brasília', 5000.00, 'Médico'),
(5, 'Patrícia Silva', 31, '67890123456', 'Manaus', 3800.00, 'Enfermeiro'),
(6, 'Thiago Sousa', 26, '78901234567', 'Fortaleza', 3000.00, 'Recepcionista'),
(7, 'Bianca Pereira', 37, '89012345678', 'Curitiba', 4500.00, 'Médico'),
(8, 'Felipe Santos', 29, '90123456789', 'Belém', 3700.00, 'Enfermeiro'),
(9, 'Juliana Costa', 33, '01234567890', 'Salvador', 3200.00, 'Recepcionista'),
(10, 'Lucas Oliveira', 39, '12345678901', 'São Paulo', 4800.00, 'Médico');

-- Inserir dados na tabela Consultas
INSERT INTO Consultas (codm, codp, data, hora) VALUES
(4, 4, '2024-03-24', '09:30:00'),
(5, 5, '2024-03-25', '15:00:00'),
(5, 6, '2024-03-26', '10:45:00'),
(4, 7, '2024-03-27', '11:30:00'),
(3, 8, '2024-03-28', '13:20:00'),
(4, 9, '2024-03-29', '14:10:00'),
(2, 10, '2024-03-30', '16:30:00');



<<<<<<< HEAD
=======
SELECT *
FROM medicos
WHERE idade > 30
	OR especialidade = 'pediatria';

    
	-- SELECT: Recupera dados de uma ou mais tabelas.
SELECT coluna1, coluna2 FROM tabela WHERE condição;

	--Exemplo: Selecionar o nome e a idade de todos os clientes com mais de 18 anos.
SELECT nome, idade FROM clientes WHERE idade > 18;

	--INSERT: Adiciona novos registros a uma tabela.
INSERT INTO tabela (coluna1, coluna2) VALUES (valor1, valor2);

	--Exemplo: Inserir um novo cliente na tabela "clientes".
INSERT INTO tabela (coluna1, coluna2) VALUES (valor1, valor2);

	--UPDATE: Modifica registros existentes em uma tabela.
INSERT INTO clientes (nome, idade, email) VALUES ('Maria Silva', 25, 'maria@email.com');


	--DELETE: Remove registros de uma tabela.
UPDATE tabela SET coluna1 = novo_valor WHERE condição;

	--Exemplo: Excluir um cliente da tabela "clientes".
UPDATE clientes SET email = 'novo_email@email.com' WHERE nome = 'Maria Silva';


	--CREATE TABLE: Cria uma nova tabela no banco de dados.
CREATE TABLE tabela (
    coluna1 tipo_dado restrições,
    coluna2 tipo_dado restrições,
    ...
);


	--Exemplo: Criar uma tabela chamada "produtos".
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    preco DECIMAL(10, 2)
);

	--ALTER TABLE: Modifica a estrutura de uma tabela existente.
ALTER TABLE tabela ADD coluna tipo_dado;
ALTER TABLE tabela DROP COLUMN coluna;



	--Exemplo: Adicionar uma nova coluna "descricao" à tabela "produtos".
ALTER TABLE produtos ADD descricao TEXT;


	--DROP TABLE: Exclui uma tabela do banco de dados.
DROP TABLE tabela;


	--JOIN: Combina linhas de duas ou mais tabelas com base em uma coluna relacionada entre elas.
SELECT colunas FROM tabela1 JOIN tabela2 ON tabela1.coluna_chave = tabela2.coluna_chave;


	--Exemplo: Selecionar o nome do cliente e o nome do produto que ele comprou.
SELECT clientes.nome, produtos.nome FROM clientes JOIN compras ON clientes.id = compras.cliente_id JOIN produtos ON compras.produto_id = produtos.id;
>>>>>>> e8b456513a55b42dd2574a360bd586dffeb95c8b
