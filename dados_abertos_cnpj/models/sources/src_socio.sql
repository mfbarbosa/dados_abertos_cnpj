select 
    "0" as cnpj_basico
    ,"1" as identificador_socio
    ,"2" as nome_socio_razao_social
    ,"3" as cpf_cnpj_socio
    ,"4" as qualificacao_socio
    ,"5" as data_entrada_sociedade
    ,"6" as pais
    ,"7" as representante_legal
    ,"8" as nome_do_representante
    ,"9" as qualificacao_representante_legal
    ,"10" as faixa_etaria
from {{ source('external_source', 'socio') }}