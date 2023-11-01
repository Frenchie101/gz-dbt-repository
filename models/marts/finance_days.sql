select
date_date
, COUNT(orders_id) as nb_transactions
, ROUND(SUM(total_revenue),2) as revenue
, ROUND((SUM(total_revenue)/ count(orders_id)),2) as average_basket
, ROUND(SUM(total_margin),2) as margin
, ROUND(SUM(operational_margin),2) as total_operational_margin
FROM 
{{ref('int_orders_operational')}}
GROUP BY date_date
ORDER BY date_date DESC