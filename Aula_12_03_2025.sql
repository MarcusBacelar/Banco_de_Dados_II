SELECT especialidade
FROM medicos;


SELECT count(*)
FROM medicos;

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