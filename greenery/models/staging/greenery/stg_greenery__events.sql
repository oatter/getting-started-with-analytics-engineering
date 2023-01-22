with source as (

    select * from {{ source('greenery', 'events') }}

)

, renamed_recasted as (

    select
        event_id as event_uid
        ,session_id as session_uid
        ,user_id as user_iuid
        ,page_url
        ,created_at
        ,event_type
        ,order_id as order_uid
        ,product_id as product_uid

    from source

)

, final as (

    select 
        event_uid
        , session_uid
        , user_iuid
        , page_url
        , created_at
        , event_type
        , order_uid
        , product_uid

    from renamed_recasted

)

select * from final