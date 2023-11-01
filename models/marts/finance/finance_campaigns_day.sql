select 
    *
    , ROUND(fd.total_operational_margin - icd.ads_cost,2) as ads_margin
from
{{ref('int_campaigns_day')}} as icd
JOIN
{{ref('finance_days')}} as fd
using (date_date)