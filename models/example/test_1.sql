{{
  config(
    materialized='run_custom_sql'
  )
}}

MERGE INTO test_1
USING test_2
ON (test_1.ID = test_2.id)
WHEN MATCHED THEN UPDATE 
SET test_1.COL2 = test_2.COL2

