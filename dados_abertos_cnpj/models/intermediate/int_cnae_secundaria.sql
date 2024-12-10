WITH cnae_secundaria AS (
SELECT 
	LPAD(bse.cnpj_basico, 8, '0') || LPAD(bse.cnpj_ordem, 4, '0') || LPAD(bse.cnpj_dv, 2, '0') AS cnpj
	,UNNEST(STRING_SPLIT(bse.cnae_fiscal_secundaria, ',')) AS codigo_cnae
FROM {{ ref('stg_estabelecimento') }} bse
)
SELECT 
	cs.cnpj
	,row_number() OVER (PARTITION BY cs.cnpj ORDER BY cs.cnpj) AS ordem
	,cs.codigo_cnae
FROM cnae_secundaria cs