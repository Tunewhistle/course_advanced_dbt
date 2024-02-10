# Week3 project walkthrough

### Update test conversion
1. Added a new rule to test conversion for staging models. If there is no joins in the model, there is no need to repeat the same tests for same columns as dependent models. Usually staging models do simple cleaning for source models,a staging model is a simple extension of a source model, so there is no need to add comprehensive similar tests again in staging phase.
2. Removed redundant tests in stg_bingeflix_users.yml.

### Create a generic test
1. Created a test called: assert_column_does_not_contain, it returns an error if a column's value contains a defined value.
2. Added this test to stg_bingeflix__events.event_name, set value as 'test', and tested this model.
