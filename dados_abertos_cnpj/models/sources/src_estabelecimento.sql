select 
    "0" as cnpj_basico
    ,"1" as cnpj_ordem
    ,"2" as cnpj_dv
    ,"3" as identificador_matriz_filial
    ,"4" as nome_fantasia
    ,"5" as situacao_cadastral
    ,"6" as data_situacao_cadastral
    ,"7" as motivo_situacao_cadastral
    ,"8" as nome_cidade_exterior
    ,"9" as pais
    ,"10" as data_inicio_atividade
    ,"11" as cnae_fiscal_principal
    ,"12" as cnae_fiscal_secundaria
    ,"13" as tipo_logradouro
    ,"14" as logradouro
    ,"15" as numero
    ,"16" as complemento
    ,"17" as bairro
    ,"18" as cep
    ,"19" as uf
    ,"20" as municipio
    ,"21" as ddd_1
    ,"22" as telefone_1
    ,"23" as ddd_2
    ,"24" as telefone_2
    ,"25" as ddd_fax
    ,"26" as fax
    ,"27" as correio_eletronico
    ,"28" as situacao_especial
    ,"29" as data_situacao_especial
from {{ source('external_source', 'estabelecimento') }}