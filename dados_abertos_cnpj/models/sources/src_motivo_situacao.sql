select 
    "0" AS codigo
    ,"1" AS descricao
from {{ source('external_source', 'motivo_situacao') }}