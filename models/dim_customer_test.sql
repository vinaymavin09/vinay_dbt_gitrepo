{{ config(materialized='table') }}

with source_data as (

    select 'vinay' as id
    union all
    select 'vinay' as id
    union all

    select 'vinay' as id
    union all
    select 'vinay' as id
    union all
    select null as id
    union all
    select 'vinay' as id
    union all
    select null as id

)

select *
from source_data