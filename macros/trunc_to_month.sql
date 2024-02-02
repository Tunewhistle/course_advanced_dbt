{% macro trunc_to_month(date_time) %}
    DATE(DATE_TRUNC('month', {{ date_time }}))

{% endmacro %}
