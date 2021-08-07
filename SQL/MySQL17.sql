SELECT ROUND(3.4) FROM dual;

SELECT ROUND(3.6) FROM dual;

SELECT TRUNC(3.4) FROM dual;

SELECT TRUNC(3.9) FROM dual;

SELECT CEIL(3.4) FROM dual;

SELECT CEIL(3.6) FROM dual;

SELECT FLOOR(3.4) FROM dual;

SELECT FLOOR(3.6) FROM dual;

SELECT POWER(10, 6) FROM dual;

SELECT EXP(10) FROM dual;

SELECT SQRT(25) "Raiz" FROM dual;

SELECT SIGN(-15) FROM dual;

SELECT ABS(-10000) FROM dual;

SELECT MOD(10,6) FROM dual;

SELECT * FROM notas_fiscais;

SELECT * FROM itens_notas_fiscais;

SELECT A.numero, ROUND(SUM(A.quantidade * A.preco), 2) "VALOR BRUTO", ROUND(SUM(A.quantidade * A.preco * b.imposto), 2) "TOTAL", B.imposto
FROM itens_notas_fiscais A
LEFT JOIN notas_fiscais B
ON a.numero = b.numero
WHERE TO_CHAR(b.data_venda, 'YYYY') = '2016'
GROUP BY A.numero, b.imposto
ORDER BY A.numero;

SELECT TO_CHAR(b.data_venda, 'YYYY') "ANO" ,FLOOR(SUM(A.quantidade * A.preco * b.imposto)) "TOTAL IMPOSTO"
FROM itens_notas_fiscais A
INNER JOIN notas_fiscais B
ON a.numero = b.numero
WHERE TO_CHAR(b.data_venda, 'YYYY') = '2016'
GROUP BY TO_CHAR(b.data_venda, 'YYYY');

SELECT numero, SUM(quantidade * preco) "TOTAL" 
FROM itens_notas_fiscais
GROUP BY numero
ORDER BY numero;