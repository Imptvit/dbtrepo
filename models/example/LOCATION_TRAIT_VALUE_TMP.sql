{{
  config(
    materialized='table',
    alias='LOCATION_TRAIT-VALUE_TMP'
  )
}}

SELECT 
 LOC_TRAIT_VAL_CD,
 LOC_TRAIT_CD,
 LOC_TRAIT_VAL_DESC
 FROM {{ ref('LOCATION_TRAIT_VALUE_WRK_11') }}