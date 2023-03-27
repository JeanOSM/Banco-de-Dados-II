SELECT nome, email,idade,endereco
FROM clientes;

SELECT nome, endereco
FROM clientes;

SELECT nome, email, idade, endereco 
FROM cliente
WHERE idade BETWEEN 18 AND 30;

SELECT nome, email, idade, endereco
FROM cliente
WHERE endereco IN 'São Paulo','Rio de Janeiro';

SELECT  nome, email, idade, endereco
FROM clientes
WHERE email LIKE '%@%'AND '%.___';

SELECT nome, email,idade, endereco
FROM clientes
WHERE nome LIKE 'A%';

SELECT nome, email, idade, endereco
FROM clientes
WHERE nome LIKE '%a';

SELECT nome, email, idade, endereco
FROM clientes
WHERE nome LIKE 'o';

SELECT nome, email, idade, endereco
FROM clientes
WHERE nome  LIKE 'A%' AND '%a';


SELECT nome, email, idade, endereco
FROM clientes
WHERE nome LIKE 'J%' AND '%e';

SELECT nome, email, idade, endereco
FROM clientes
WHERE nome LIKE '______';


SELECT nome, email, idade, endereco
FROM clientes
WHERE nome LIKE (nome>='___') AND (nome<='_____'); 


SELECT nome, email, idade, endereco
FROM clientes
WHERE nome LIKE NOT 'A%';

SELECT nome, email, idade, endereco
FROM clientes
WHERE nome LIKE NOT '%A';

SELECT nome, email, idade, endereco
FROM clientes
WHERE nome LIKE NOT 'o' or 'O';

SELECT nome, email, idade, endereco
FROM clientes
WHERE nome LIKE 'a' OR 'e' OR 'i' OR 'o' OR 'u';

SELECT nome, email, idade, endereco
FROM clientes
WHERE nome LIKE 'M%', dade BETWEEN 20 AND 30;







CREATE TABLE funcionarios (
	id_funcionario SERIAL NOT NULL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	idade INT NOT NULL,
	cargo VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	salario DECIMAL(7, 2) NOT NULL,
	cidade VARCHAR(100) NOT NULL
);


INSERT INTO funcionarios (nome, idade, cargo, email, salario, cidade)
VALUES ('Maria', 30, 'Vendedora', 'maria@email.com', 3500.50, 'Paranavai'),
	('Janaina', 42, 'RH', 'janaina@email.com', 3000.00, 'Paranavai'),
	('Gertrudes', 23, 'Caixa', 'gertrude@email.com', 1500.00, 'Alto Parana'),
	('Regina', 35, 'Gerente', 'regina@email.com', 15000.00, 'Maringa'),
	('Maria Margareth', 35, 'Estoquista', 'mmargareth@email.com', 1000.00, 'Nova Alianca'),
	('Davi Banana', 36, 'Zelador', 'davi@email.com', 1000.00, 'Paranavai'),
	('Senhor Ouro', 55, 'CEO', 'ouro@email.com', 30000.00, 'Curitiba'),
	('Rubi', 30, 'Atendente', 'rubi@email.com', 1500.00, 'Paranavai'),
	('Vovozinha', 65,'Cozinheira', 'vovo@email.com', 3000.00, 'Maringa'),
	('Emma Cisne', 28, 'Supervisora', 'emma@email.com', 5000.00, 'Paranavai'),
	('Henrique', 18, 'Office boy', 'henry@email.com', 1300.00, 'Paranavai'),
	('Arquibaldo', 45, 'Contador', null, 3500.00, 'Paranavai'),
	('Augusto', 38, 'Contador', 'augusto@email.com', 3500.00, 'Paranavai'),
	('Kelly', 35, 'Vendedora', null, 3000.00, 'Maringa');
	
	//ordenando 
	SELECT nome, cargo, salario 
	  FROM funcionarios
	 WHERE salario > 2000
	 ORDER BY nome;
	
	//ordenando salario decrecente  
	SELECT nome, cargo, salario
	  FROM funcionarios
	 WHERE salario > 2000
	 ORDER BY salario DESC;
	
	SELECT nome, idade , idade+1 as idade_futura
	  FROM funcionarios
	 ORDER BY nome;
	
	
	SELECT cidade 
	  FROM funcionarios;
	
	//sem repetição
	SELECT DISTINCT cidade 
	  FROM funcionarios;
	
	//quantidade
	SELECT COUNT (*) AS total_funcionarios
	  FROM funcionarios;
	//quantidade
	SELECT COUNT (*) AS total_funcionarios, COUNT (email) AS com_email
	  FROM funcionarios;
	  
	  
	 // quantidade sem repetição 
	SELECT COUNT (DISTINCT cidade) AS cidades
	  FROM funcionarios;
	//maior
	SELECT MAX (salario) AS o_mais_rico
	  FROM funcionarios;
	
	//menor
	SELECT MIN (idade) AS o_bebe
	  FROM funcionarios;
	  //soma de linhas 
	SELECT SUM (salario) as total_salario
	  FROM funcionarios;
	
	 // media
	SELECT AVG (salario) as media_salarios
	  FROM funcionarios;
	
	
	
	
CREATE TABLE clientes (
	id_clientes SERIAL PRIMARY KEY NOT NULL,
	nome  VARCHAR(100) NOT NULL,
	email VARCHAR(150) NOT NULL,
	telefone VARCHAR(11) NOT NULL,
	endereco VARCHAR(100)
);

CREATE TABLE produtos(
	id_produtos SERIAL PRIMARY KEY NOT NULL ,
	nome VARCHAR(100) NOT NULL,
	categoria VARCHAR(100) NOT NULL,
	preco DECIMAL(7,2) NOT NULL,
	estoque INT NOT NULL
);
	
CREATE TABLE vendas (
	id_venda SERIAL PRIMARY KEY NOT NULL ,
	id_produto INT,
	id_cliente INT, 
	quantidade INT,
	data_dia date,
	CONSTRAINT id_produto FOREIGN KEY(id_produto) REFERENCES produtos(id_produtos),
	CONSTRAINT id_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id_clientes)
	 
);
	
	
