SELECT 
	cnpj_basico
	,cnpj_ordem
	,cnpj_dv
    ,LPAD(cnpj_basico, 8, '0') || LPAD(cnpj_ordem, 4, '0') || LPAD(cnpj_dv, 2, '0') AS cnpj_completo	
	,identificador_matriz_filial
    ,CASE 
        identificador_matriz_filial
        WHEN '1' THEN 'Matriz'
        WHEN '2' THEN 'Filial'
        ELSE 'Nao Informado'
    END AS identificador_matriz_filial_desc
	,nome_fantasia
	,situacao_cadastral
	,CASE 
		situacao_cadastral
		WHEN '01' THEN 'Nula'
		WHEN '02' THEN 'Ativa'
		WHEN '03' THEN 'Suspensa'
		WHEN '04' THEN 'Inapta'
		WHEN '08' THEN 'Baixada'
		ELSE 'Nao Informado'
	END AS situacao_cadastral_desc
	,strptime(CAST(nullif(data_situacao_cadastral,  0) AS varchar), '%Y%m%d') AS data_situacao_cadastral
	,motivo_situacao_cadastral
	,nome_cidade_exterior
	,pais
	,strptime(CAST(nullif(data_inicio_atividade,  0) AS varchar), '%Y%m%d') AS data_inicio_atividade
	,cnae_fiscal_principal
	,cnae_fiscal_secundaria
	,tipo_logradouro
	,logradouro
	,numero
	,complemento
	,bairro
	,cep
	,uf
	,municipio
	,ddd_1
	,telefone_1
	,ddd_2
	,telefone_2
	,ddd_fax
	,fax
	,correio_eletronico
	,situacao_especial
	,data_situacao_especial
FROM {{ ref('src_estabelecimento') }}