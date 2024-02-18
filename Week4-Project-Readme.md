# Week4 project walkthrough

### Made fct_events model incremental
1. Change config to make fct_events model incremental
2. Create a macro incremental where clause and add to fct_events

### Installed dbt_snowflake_monitoring package
1. Add and run the package for the project
2. tried a few example queries from SELECT

### Created intermediate models for mrr model
1. Take subscription_periods CTE out and create a intermediate model for it
2. Replace subscription_periods CTE with int_subscription_periods model in the mrr model
