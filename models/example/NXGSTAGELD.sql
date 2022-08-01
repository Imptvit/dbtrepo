{{
  config(
    materialized='incremental',
    unique_key='LOC_TRAIT_VAL_CD',
    incremental_strategy='delete+insert'
  )
}}

SELECT 
 a.LOC_TRAIT_VAL_CD,
 a.LOC_TRAIT_CD,
 b.LOC_TRAIT_VAL_DESC
 FROM {{ ref('LOCATION_TRAIT_VALUE_WRK_11') }} as a
 JOIN {{ ref('NXGFILELD') }} as b
 ON (a.LOC_TRAIT_VAL_CD = b.LOC_TRAIT_VAL_CD)	