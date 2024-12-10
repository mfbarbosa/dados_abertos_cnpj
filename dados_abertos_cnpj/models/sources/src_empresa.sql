select 
    "0" as cnpj_basico
    ,"1" as razao_social
    ,"2" as natureza_juridica
    ,"3" as qualificacao_responsavel
    ,"4" as capital_social
    ,"5" as porte_empresa
    ,"6" as ente_federativo_responsavel
from {{ source('external_source', 'empresa') }}