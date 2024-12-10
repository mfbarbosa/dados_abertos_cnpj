SELECT 
	codigo
	,descricao
FROM {{ ref('src_qualificacao_socio') }}