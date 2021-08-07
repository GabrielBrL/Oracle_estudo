SELECT codigo_do_produto, nome_do_produto FROM tabela_de_produtos;

SELECT ROWNUM, codigo_do_produto, nome_do_produto FROM tabela_de_produtos;

SELECT codigo_do_produto, nome_do_produto FROM tabela_de_produtos WHERE ROWNUM <= 5;

SELECT * FROM notas_fiscais WHERE ROWNUM <= 10 AND data_venda =  TO_DATE('01/01/2017', 'DD/MM/YYYY');