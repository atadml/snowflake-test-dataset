view: analytics_events {
  sql_table_name: "PUBLIC"."ANALYTICS_EVENTS" ;;

  dimension_group: collector_tstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."COLLECTOR_TSTAMP" ;;
  }
  dimension: doc_height {
    type: number
    sql: ${TABLE}."DOC_HEIGHT" ;;
  }
  dimension: doc_width {
    type: number
    sql: ${TABLE}."DOC_WIDTH" ;;
  }
  dimension: domain_sessionidx {
    type: number
    sql: ${TABLE}."DOMAIN_SESSIONIDX" ;;
  }
  dimension: domain_userid {
    type: string
    sql: ${TABLE}."DOMAIN_USERID" ;;
  }
  dimension_group: dvce_tstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DVCE_TSTAMP" ;;
  }
  dimension: event {
    type: string
    sql: ${TABLE}."EVENT" ;;
  }
  dimension: event_id {
    type: string
    sql: ${TABLE}."EVENT_ID" ;;
  }
  dimension: geo_city {
    type: string
    sql: ${TABLE}."GEO_CITY" ;;
  }
  dimension: geo_country {
    type: string
    sql: ${TABLE}."GEO_COUNTRY" ;;
  }
  dimension: geo_latitude {
    type: number
    sql: ${TABLE}."GEO_LATITUDE" ;;
  }
  dimension: geo_longitude {
    type: number
    sql: ${TABLE}."GEO_LONGITUDE" ;;
  }
  dimension: geo_region {
    type: string
    sql: ${TABLE}."GEO_REGION" ;;
  }
  dimension: geo_zipcode {
    type: string
    sql: ${TABLE}."GEO_ZIPCODE" ;;
  }
  dimension: mkt_campaign {
    type: string
    sql: ${TABLE}."MKT_CAMPAIGN" ;;
  }
  dimension: mkt_medium {
    type: string
    sql: ${TABLE}."MKT_MEDIUM" ;;
  }
  dimension: mkt_source {
    type: string
    sql: ${TABLE}."MKT_SOURCE" ;;
  }
  dimension: mkt_term {
    type: string
    sql: ${TABLE}."MKT_TERM" ;;
  }
  dimension: page_title {
    type: string
    sql: ${TABLE}."PAGE_TITLE" ;;
  }
  dimension: page_urlfragment {
    type: string
    sql: ${TABLE}."PAGE_URLFRAGMENT" ;;
  }
  dimension: page_urlhost {
    type: string
    sql: ${TABLE}."PAGE_URLHOST" ;;
  }
  dimension: page_urlpath {
    type: string
    sql: ${TABLE}."PAGE_URLPATH" ;;
  }
  dimension: page_urlport {
    type: number
    sql: ${TABLE}."PAGE_URLPORT" ;;
  }
  dimension: page_urlquery {
    type: string
    sql: ${TABLE}."PAGE_URLQUERY" ;;
  }
  dimension: page_urlscheme {
    type: string
    sql: ${TABLE}."PAGE_URLSCHEME" ;;
  }
  dimension: pp_xoffset_max {
    type: number
    sql: ${TABLE}."PP_XOFFSET_MAX" ;;
  }
  dimension: pp_xoffset_min {
    type: number
    sql: ${TABLE}."PP_XOFFSET_MIN" ;;
  }
  dimension: pp_yoffset_max {
    type: number
    sql: ${TABLE}."PP_YOFFSET_MAX" ;;
  }
  dimension: pp_yoffset_min {
    type: number
    sql: ${TABLE}."PP_YOFFSET_MIN" ;;
  }
  dimension: refr_medium {
    type: string
    sql: ${TABLE}."REFR_MEDIUM" ;;
  }
  dimension: refr_source {
    type: string
    sql: ${TABLE}."REFR_SOURCE" ;;
  }
  dimension: refr_term {
    type: string
    sql: ${TABLE}."REFR_TERM" ;;
  }
  dimension: refr_urlhost {
    type: string
    sql: ${TABLE}."REFR_URLHOST" ;;
  }
  dimension: refr_urlpath {
    type: string
    sql: ${TABLE}."REFR_URLPATH" ;;
  }
  dimension: se_action {
    type: string
    sql: ${TABLE}."SE_ACTION" ;;
  }
  dimension: se_category {
    type: string
    sql: ${TABLE}."SE_CATEGORY" ;;
  }
  dimension: se_label {
    type: string
    sql: ${TABLE}."SE_LABEL" ;;
  }
  dimension: se_property {
    type: string
    sql: ${TABLE}."SE_PROPERTY" ;;
  }
  dimension: se_value {
    type: number
    sql: ${TABLE}."SE_VALUE" ;;
  }
  dimension: ti_category {
    type: string
    sql: ${TABLE}."TI_CATEGORY" ;;
  }
  dimension: ti_name {
    type: string
    sql: ${TABLE}."TI_NAME" ;;
  }
  dimension: ti_orderid {
    type: string
    sql: ${TABLE}."TI_ORDERID" ;;
  }
  dimension: ti_price {
    type: number
    sql: ${TABLE}."TI_PRICE" ;;
  }
  dimension: ti_quantity {
    type: number
    sql: ${TABLE}."TI_QUANTITY" ;;
  }
  dimension: ti_sku {
    type: string
    sql: ${TABLE}."TI_SKU" ;;
  }
  dimension: tr_affiliation {
    type: string
    sql: ${TABLE}."TR_AFFILIATION" ;;
  }
  dimension: tr_city {
    type: string
    sql: ${TABLE}."TR_CITY" ;;
  }
  dimension: tr_country {
    type: string
    sql: ${TABLE}."TR_COUNTRY" ;;
  }
  dimension: tr_orderid {
    type: string
    sql: ${TABLE}."TR_ORDERID" ;;
  }
  dimension: tr_state {
    type: string
    sql: ${TABLE}."TR_STATE" ;;
  }
  dimension: tr_tax {
    type: number
    sql: ${TABLE}."TR_TAX" ;;
  }
  dimension: tr_total {
    type: number
    sql: ${TABLE}."TR_TOTAL" ;;
  }
  measure: count {
    type: count
    drill_fields: [ti_name]
  }
}
