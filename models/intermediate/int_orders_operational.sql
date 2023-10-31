select 
    *
   , ROUND(CAST(total_margin as FLOAT64) + CAST(shipping_fee AS FLOAT64) - CAST(logcost as FLOAT64)- CAST(ship_cost as FLOAT64),2) as operational_margin
from
{{ref('int_orders_margin')}}
JOIN
{{ref('stg_raw__ship')}}
using (orders_id)