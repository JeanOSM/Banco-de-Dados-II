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