# Week2 project walkthrough

### Install pre-commit and add pre-commit hooks
1. Installed pre-commit and configure file
2. Added sqlfluff to pre-commit hooks
      Changed a trailing comma and test-committed with hook sqlfluff-lint. The pre-commit hook reported error.
      Test-committed with sqlfluff-fix, the error was automatically fixed.
3. Added dbt-checkpoint to pre-commit hooks
      Run this pre-commit-hook, added two missing columns' documentation to core.dim_users.
4. Added check-model-tags hook to pre-commit hooks.

### Create macros
1. Generalized a custom macro called rolling_aggregation_n_days, it does a rolling calculation for a period of days with a chosen aggregation method. Both sql and yml files are created.
2. Created a new macro called trunc_to_month, it truncates time column to month. Both sql and yml files are created. And this macro is added to the core mrr model.
