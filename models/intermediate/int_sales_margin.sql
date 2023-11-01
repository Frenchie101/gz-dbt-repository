select 
    *
    , ROUND((quantity * purchase_price),2) as purchase_cost
    , ROUND(revenue - (quantity * purchase_price),2) as margin
    , {{create_margin_percent('revenue', 'ROUND((quantity * purchase_price),2)')}} as margin_percent
from
{{ref('stg_raw__sales')}}
JOIN
{{ref('stg_raw__product')}}
using (products_id)