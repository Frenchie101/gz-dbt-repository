{% macro  margin_percent(revenue,purchase_cost)  %}
ROUND(SAFE_DIVIDE((revenue - purchase_cost), revenue)*100,1)as margin_percent
{% endmacro %}