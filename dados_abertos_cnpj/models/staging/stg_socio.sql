SELECT 
	cnpj_basico
	,identificador_socio
	,nome_socio_razao_social
	,cpf_cnpj_socio
	,qualificacao_socio
	,strptime(CAST(nullif(data_entrada_sociedade,  0) AS varchar), '%Y%m%d') AS data_entrada_sociedade
	,pais
	,representante_legal
	,nome_do_representante
	,qualificacao_representante_legal
	,faixa_etaria
FROM {{ ref('src_socio') }}