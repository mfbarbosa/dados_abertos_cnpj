SELECT 
	codigo
	,descricao
FROM {{ ref('src_natureza_juridica') }}