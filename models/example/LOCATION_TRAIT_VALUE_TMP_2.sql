{{
  config(
    materialized='incremental',
    unique_key='LOC_TRAIT_VAL_CD',
    incremental_strategy='delete+insert'
  )
}}

SELECT 
 LOC_TRAIT_VAL_CD,
 LOC_TRAIT_CD,
 LOC_TRAIT_VAL_DESC
 FROM {{ ref('LOCATION_TRAIT_VALUE_WRK_11') }}