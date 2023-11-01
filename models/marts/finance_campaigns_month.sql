SELECT
    *
    , date_trunc(<date/time field>, <date part>) as datemonth
FROM {{ref('finance_campaigns_day')}}




