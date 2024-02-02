{% macro rolling_aggregation_n_days(column_name, partition_by, number_of_days = 7, aggregation_method = 'avg',  order_by='created_at') %}
    {{ aggregation_method }}( {{ column_name }} ) OVER (
                PARTITION BY {{ partition_by }}
                ORDER BY {{ order_by }}
                ROWS BETWEEN {{ number_of_days }}-1 PRECEDING AND CURRENT ROW
            ) AS {{ aggregation_method }}_{{ number_of_days }}_periods_{{ column_name }}
{% endmacro %}
