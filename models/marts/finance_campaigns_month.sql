SELECT
    date_trunc(date_date, month) as datemonth
    , SUM(ads_cost) as ads_cost
    , SUM(impression) as impression
    , SUM(click) as click
FROM {{ref('int_campaigns')}}
GROUP BY datemonth
ORDER BY datemonth




