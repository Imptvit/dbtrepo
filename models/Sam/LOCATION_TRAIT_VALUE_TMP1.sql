{{
  config(
    materialized='incremental',
    alias='LOCATION_TRAIT_VALUE_TMP',
    unique_key='LOC_TRAIT_CD'
  )
}}

SELECT 
 LOC_TRAIT_VAL_CD,
 LOC_TRAIT_CD,
 LOC_TRAIT_VAL_DESC
 FROM {{ ref('LOCATION_TRAIT_VALUE_WRK_11') }}

  {% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where LOC_TRAIT_CD >= (select max(LOC_TRAIT_CD) from {{ this }})

{% endif %}