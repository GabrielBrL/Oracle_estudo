SELECT nome FROM tabela_de_clientes;

SELECT nome, UPPER(nome), LOWER(nome) FROM tabela_de_clientes;

SELECT nome_do_produto, INITCAP(nome_do_produto) FROM tabela_de_produtos;


SELECT CONCAT(endereco_1 , bairro) FROM tabela_de_clientes;

SELECT nome, 'Endereço: ' || endereco_1 || ' ' || bairro || ' ' || cidade || ' ' || estado || ', CEP:  ' || cep endereco
FROM tabela_de_clientes;

SELECT nome_do_produto, LPAD(nome_do_produto, 50 , '*') FROM tabela_de_produtos;

SELECT nome_do_produto, RPAD(nome_do_produto, 50 , '*') FROM tabela_de_produtos;

SELECT nome_do_produto, SUBSTR(nome_do_produto,3,5) FROM tabela_de_produtos;

SELECT nome_do_produto, INSTR(nome_do_produto,'-') FROM tabela_de_produtos;

SELECT nome_do_produto, REPLACE(REPLACE(nome_do_produto,'Litros','L'), 'Ls', 'L') FROM tabela_de_produtos;

SELECT NOME, 'Nome: '  || NOME || ' - Endereço: ' || ENDERECO_1 || ' ' || BAIRRO || ' ' || CIDADE || ' ' || ESTADO AS COMPLETO
FROM TABELA_DE_CLIENTES