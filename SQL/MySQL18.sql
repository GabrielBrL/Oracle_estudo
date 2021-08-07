SELECT TO_DATE(sysdate, 'DD/MM/YYYY') FROM dual;

SELECT TO_DATE(sysdate, 'MM/DD/YYYY') FROM dual;

SELECT TO_CHAR(sysdate, 'MM/DD/YYYY HH12:MM:SS AM') FROM dual;

SELECT EXTRACT(MONTH FROM TO_DATE(sysdate, 'DD/MM/YYYY')) FROM dual;

SELECT EXTRACT(MONTH FROM TO_DATE(sysdate, 'MM/DD/YYYY')) FROM dual;

SELECT TO_NUMBER('10') + 100 FROM dual;

SELECT TO_CHAR(10, '00000') FROM dual;

SELECT NVL(a.nome, 'Cliente Vazio'), a.bairro, NVL(b.nome, 'Vendedor Vazio'), b.bairro
FROM tabela_de_clientes A
FULL JOIN tabela_de_vendedores B
ON a.bairro = b.bairro;

SELECT GREATEST(10,20,15) FROM dual;

SELECT 'O cliente ' || cliente.nome || ' faturou ' || ROUND(SUM(itens.preco * itens.quantidade), 2) || ' no ano de ' || TO_CHAR(nota_fiscal.data_venda, 'YYYY') AS SENTENCA
FROM notas_fiscais nota_fiscal
INNER JOIN tabela_de_clientes cliente
ON nota_fiscal.cpf = cliente.cpf
INNER JOIN itens_notas_fiscais itens
ON itens.numero = nota_fiscal.numero
WHERE TO_CHAR(nota_fiscal.data_venda, 'YYYY') = '2016'
GROUP BY cliente.nome, TO_CHAR(nota_fiscal.data_venda, 'YYYY');