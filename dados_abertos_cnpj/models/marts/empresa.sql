SELECT 
	bses.cnpj_completo AS cnpj	
	,bsem.razao_social		
	,bses.nome_fantasia 
	,bses.identificador_matriz_filial_desc 
	,bsnj.descricao  AS natureza_juridica_desc	
	,bsqs.descricao  AS qualificacao_responsavel_desc
	,bsem.capital_social	
	,bsem.porte_empresa_desc
	,bses.cnae_fiscal_principal AS cnae_principal
	,bsc.descricao  AS cnae_principal_desc
	,bsmu.descricao AS municipio_desc
	,bses.uf 
	,bses.data_inicio_atividade 
	,bses.data_situacao_cadastral 
	,bses.situacao_cadastral_desc 
	,bsms.descricao  AS motivo_situacao_cadastral_desc
FROM {{ ref('stg_empresa') }} bsem
INNER JOIN {{ ref('stg_natureza_juridica') }} bsnj
 	ON bsem.natureza_juridica = bsnj.codigo
INNER JOIN {{ ref('stg_qualificacao_socio') }} bsqs
	ON bsem.qualificacao_responsavel = bsqs.codigo
INNER JOIN {{ ref('stg_estabelecimento') }} bses
	ON bsem.cnpj_basico  = bses.cnpj_basico
INNER JOIN {{ ref('stg_cnae') }} bsc
 	ON bses.cnae_fiscal_principal = bsc.codigo 
INNER JOIN {{ ref('stg_motivo_situacao') }} bsms
	ON bses.motivo_situacao_cadastral  = bsms.codigo
INNER JOIN {{ ref('stg_municipio') }} bsmu 
	ON bses.municipio = bsmu.codigo

	
