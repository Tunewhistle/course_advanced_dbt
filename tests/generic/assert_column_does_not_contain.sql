{% test assert_column_does_not_contain(model, column_name, value) %}

SELECT *
FROM {{ model }}
WHERE LOWER({{ column_name }}) LIKE '%{{ value }}%'

{% endtest %}
