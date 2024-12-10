SELECT 
	codigo
	,descricao
FROM {{ ref('src_pais') }}	