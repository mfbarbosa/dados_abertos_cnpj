select
    "0" as cnpj_basico
    ,"1" as opcao_pelo_simples
    ,"2" as data_opcao_simples
    ,"3" as data_exclusao_simples
    ,"4" as opcao_mei
    ,"5" as data_opcao_mei
    ,"6" as data_exclusao_mei
from {{ source('external_source', 'simples') }} 
