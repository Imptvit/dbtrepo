{{
  config(
    materialized='incremental',
    alias='LOCATION_TRAIT_VALUE_TMP1',
    incremental_stratergy='insert'
  )
}}

SELECT 
 LOC_TRAIT_VAL_CD,
 LOC_TRAIT_CD,
 LOC_TRAIT_VAL_DESC
 FROM {{ ref('LOCATION_TRAIT_VALUE_WRK_11') }}
