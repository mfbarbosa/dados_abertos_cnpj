SELECT 
	cnpj_basico
	,opcao_pelo_simples
	,strptime(CAST(nullif(data_opcao_simples,  0) AS varchar), '%Y%m%d') data_opcao_simples 
	,strptime(CAST(nullif(data_exclusao_simples,  0) AS varchar), '%Y%m%d') data_exclusao_simples
	,opcao_mei
	,strptime(CAST(nullif(data_opcao_mei,  0) AS varchar), '%Y%m%d') data_opcao_mei
	,strptime(CAST(nullif(data_exclusao_mei,  0) AS varchar), '%Y%m%d') data_exclusao_mei	
FROM {{ ref('src_simples') }}