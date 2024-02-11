# Week3 project walkthrough

### Update test conversion
1. Added a new rule to test conversion for staging models. If there is no joins in the model, there is no need to repeat the same tests for same columns as dependent models. Usually staging models do simple cleaning for source models,a staging model is a simple extension of a source model, so there is no need to add comprehensive similar tests again in staging phase.
2. Removed redundant tests in stg_bingeflix_users.yml.

### Create a generic test
1. Created a test called: assert_column_does_not_contain, it returns an error if a column's value contains a defined value.
2. Added this test to stg_bingeflix__events.event_name, set value as 'test', and tested this model.

### Create an unit test
1. Created seed files for two input mock data and one expected output mock data
2. Create a source model switch macro and used it in mrr.sql
3. Add tags to the unit_testing seed folder, and added dbt_utils.equality test in the mrr.yml file.
