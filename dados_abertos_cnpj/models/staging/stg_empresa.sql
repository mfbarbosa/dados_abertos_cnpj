SELECT 
	cnpj_basico
	,TRIM(razao_social) AS razao_social
	,natureza_juridica
	,qualificacao_responsavel
	,CAST(REPLACE(capital_social, ',', '.') AS DOUBLE) AS capital_social
	,porte_empresa
	,CASE 
		porte_empresa
		WHEN '00' THEN 'Nao Informado'
		WHEN '01' THEN 'Micro Empresa'
		WHEN '03' THEN 'Empresa de Pequeno Porte'
		WHEN '05' THEN 'Demais'
		ELSE 'Nao Informado'
	END AS porte_empresa_desc
	,ente_federativo_responsavel
FROM {{ ref('src_empresa') }}
WHERE TRIM(razao_social) IS NOT NULL