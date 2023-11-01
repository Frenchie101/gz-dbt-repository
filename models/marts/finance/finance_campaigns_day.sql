select 
    fd.date_date
    , ROUND(fd.total_operational_margin - ads_cost,2) as ads_margin
    , fd.average_basket
    , fd.nb_transactions
    , fd.revenue
    , fd.margin
    , fd.total_operational_margin
    , icd.ads_cost

from
{{ref('int_campaigns_day')}} as icd
LEFT JOIN
{{ref('finance_days')}} as fd
using (date_date)
order by date_date