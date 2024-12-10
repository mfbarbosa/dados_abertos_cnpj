SELECT 
	codigo
	,descricao
FROM {{ ref('src_motivo_situacao') }}