with 

source as (

    select * from {{ source('raw', 'facebook') }}

),

renamed as (

    select
        date_date,
        paid_source,
        CAST(campaign_key as INT64) as campaign_key,
        campgn_name as campaign_name,
        CAST(ads_cost as FLOAT64) as ads_cost,
        click,
        impression

    from source

)

select * from renamed
