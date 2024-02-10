# Week3 project walkthrough

### Update test conversion
1. Added a new rule to test conversion for staging models. If there is no joins in the model, there is no need to repeat the same tests for same columns as dependent models. Usually staging models do simple cleaning for source models,a staging model is a simple extension of a source model, so there is no need to add comprehensive similar tests again in staging phase.
2. Removed redundant tests in stg_bingeflix_users.yml.

### Create macros
1. Generalized a custom macro called rolling_aggregation_n_days, it does a rolling calculation for a period of days with a chosen aggregation method. Both sql and yml files are created.
2. Created a new macro called trunc_to_month, it truncates time column to month. Both sql and yml files are created. And this macro is added to the core mrr model.
