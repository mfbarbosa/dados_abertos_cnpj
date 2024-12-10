SELECT 
	sics.cnpj
	,sics.ordem
	,sics.codigo_cnae
	,bsc.descricao AS cnae_desc
FROM {{ ref('int_cnae_secundaria') }} sics
INNER JOIN {{ ref('stg_cnae') }} bsc 
	ON sics.codigo_cnae  = bsc.codigo