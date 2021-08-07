SELECT
    SUM(inf.quantidade)            AS quantidade_vendida,
    tp.sabor,
    to_char(nf.data_venda, 'YYYY') AS ano
FROM
         itens_notas_fiscais inf
    INNER JOIN tabela_de_produtos tp ON inf.codigo_do_produto = tp.codigo_do_produto
    INNER JOIN notas_fiscais      nf ON nf.numero = inf.numero
WHERE
    to_char(nf.data_venda, 'YYYY') = '2016'
GROUP BY
    tp.sabor,
    to_char(nf.data_venda, 'YYYY')
ORDER BY
    quantidade_vendida DESC;

SELECT
    SUM(inf.quantidade)            AS total_vendido,
    to_char(nf.data_venda, 'YYYY') AS ano
FROM
         itens_notas_fiscais inf
    INNER JOIN tabela_de_produtos tp ON inf.codigo_do_produto = tp.codigo_do_produto
    INNER JOIN notas_fiscais      nf ON nf.numero = inf.numero
WHERE
    to_char(nf.data_venda, 'YYYY') = '2016'
GROUP BY
    to_char(nf.data_venda, 'YYYY');

SELECT
    tabela_vendas.sabor,
    round(((tabela_vendas.quantidade_vendida / tabela_vendas_total.quantidade_total_vendida) * 100), 2) AS percentual,
    tabela_vendas_total.ano
FROM
         (
        SELECT
            tp.sabor                       AS sabor,
            SUM(inf.quantidade)            AS quantidade_vendida,
            to_char(nf.data_venda, 'YYYY') AS ano
        FROM
                 itens_notas_fiscais inf
            INNER JOIN tabela_de_produtos tp ON inf.codigo_do_produto = tp.codigo_do_produto
            INNER JOIN notas_fiscais      nf ON nf.numero = inf.numero
        WHERE
            to_char(nf.data_venda, 'YYYY') = '2016'
        GROUP BY
            tp.sabor,
            to_char(nf.data_venda, 'YYYY')
        ORDER BY
            quantidade_vendida DESC
    ) tabela_vendas
    INNER JOIN (
        SELECT
            SUM(inf.quantidade)            AS quantidade_total_vendida,
            to_char(nf.data_venda, 'YYYY') AS ano
        FROM
                 itens_notas_fiscais inf
            INNER JOIN tabela_de_produtos tp ON inf.codigo_do_produto = tp.codigo_do_produto
            INNER JOIN notas_fiscais      nf ON nf.numero = inf.numero
        WHERE
            to_char(nf.data_venda, 'YYYY') = '2016'
        GROUP BY
            to_char(nf.data_venda, 'YYYY')
    ) tabela_vendas_total ON tabela_vendas.ano = tabela_vendas_total.ano;

SELECT
    tabela_vendas.sabor,
    round(((tabela_vendas.quantidade_vendida / tabela_vendas_total.quantidade_total_vendida) * 100), 2) AS percentual,
    tabela_vendas_total.ano
FROM
         (
        SELECT
            tp.sabor                       AS sabor,
            SUM(inf.quantidade)            AS quantidade_vendida,
            to_char(nf.data_venda, 'YYYY') AS ano
        FROM
                 itens_notas_fiscais inf
            INNER JOIN tabela_de_produtos tp ON inf.codigo_do_produto = tp.codigo_do_produto
            INNER JOIN notas_fiscais      nf ON nf.numero = inf.numero
        WHERE
            to_char(nf.data_venda, 'YYYY') = '2016'
        GROUP BY
            tp.sabor,
            to_char(nf.data_venda, 'YYYY')
        ORDER BY
            quantidade_vendida DESC
    ) tabela_vendas
    INNER JOIN (
        SELECT
            SUM(inf.quantidade)            AS quantidade_total_vendida,
            to_char(nf.data_venda, 'YYYY') AS ano
        FROM
                 itens_notas_fiscais inf
            INNER JOIN tabela_de_produtos tp ON inf.codigo_do_produto = tp.codigo_do_produto
            INNER JOIN notas_fiscais      nf ON nf.numero = inf.numero
        WHERE
            to_char(nf.data_venda, 'YYYY') = '2016'
        GROUP BY
            to_char(nf.data_venda, 'YYYY')
    ) tabela_vendas_total ON tabela_vendas.ano = tabela_vendas_total.ano;