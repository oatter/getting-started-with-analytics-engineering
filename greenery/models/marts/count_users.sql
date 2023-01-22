
{{
    config(
        materialized='table'
    )
}}

select 
    count(distinct user_id) as user_count

from {{ source('greenery', 'users') }}