select 
    date_date
    , orders_id
    , ROUND(SUM(revenue),2) as total_revenue
    , ROUND(SUM(quantity),2) as total_quantity
from
{{ref('int_sales_margin')}}
GROUP BY date_date, orders_id