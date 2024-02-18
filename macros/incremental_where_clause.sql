{% macro incremental_where_clause(column_name, lookback_window=3,interval_type='days') -%}
{% if is_incremental() %}

    where {{ column_name }} >= (select max({{ column_name }}) from {{ this }}) - INTERVAL '{{ lookback_window }} {{ interval_type }}'
{% endif %}
{%- endmacro %}
