{{
  config(
    materialized='run_custom_sql'
  )
}}

MERGE INTO {{ref('test_1')}}
USING test_2
ON (test_1.ID = test_2.id)
WHEN NOT MATCHED THEN insert(test_1.id,test_1.col2) 
values(test_2.id, test_2.COL2);

update {{ref('test_1')}}
SET test_1.COL2 ='Jain'
WHEre test_1.COL2='bb';

create or replace table {{this}} as select * from {{ref('test_1')}};