SELECT 
    codigo
    ,descricao
FROM {{ ref('src_cnae') }}