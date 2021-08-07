SELECT sysdate from dual;

SELECT TO_CHAR(sysdate, 'YYYY/MM/DD HH:MM:SS') FROM dual;

SELECT sysdate + 10 FROM dual;

SELECT sysdate - 10 FROM dual;

SELECT MONTHS_BETWEEN(sysdate, TO_DATE('2021-01-01', 'YYYY-MM-DD')) FROM dual;

SELECT ADD_MONTHS(sysdate, 10) FROM dual;

SELECT NEXT_DAY(sysdate, 'SEXTA') FROM dual;

SELECT LAST_DAY(SYSDATE) FROM dual;

SELECT TRUNC(sysdate, 'YEAR') FROM dual;
SELECT TRUNC(sysdate, 'MONTH') FROM dual;

SELECT ROUND(sysdate, 'YEAR') FROM dual;
SELECT ROUND(sysdate, 'MONTH') FROM dual;

SELECT nome, TO_CHAR((((sysdate - data_de_nascimento)/31)/12), '999') AS idade
FROM tabela_de_clientes;

SELECT nome, TO_CHAR(MONTHS_BETWEEN(sysdate, data_de_nascimento)/12, '999') AS idade
FROM tabela_de_clientes;