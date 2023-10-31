select 
    date_date
    , orders_id
    ,CAST(ROUND(SUM(margin),2) as   float64) as total_margin
    ,CAST(ROUND(SUM(revenue),2) as  float64) as total_revenue
    ,CAST(ROUND(SUM(quantity),2) as float64) as total_quantity
from
{{ref('int_sales_margin')}}
GROUP BY date_date, orders_id