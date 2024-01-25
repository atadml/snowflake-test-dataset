view: events {
  sql_table_name: "ANALYTICS_DATA"."EVENTS" ;;

  dimension: br_cookies {
    type: yesno
    sql: ${TABLE}."BR_COOKIES" ;;
  }
  dimension: br_family {
    type: string
    sql: ${TABLE}."BR_FAMILY" ;;
  }
  dimension: br_features_director {
    type: yesno
    sql: ${TABLE}."BR_FEATURES_DIRECTOR" ;;
  }
  dimension: br_features_flash {
    type: yesno
    sql: ${TABLE}."BR_FEATURES_FLASH" ;;
  }
  dimension: br_features_gears {
    type: yesno
    sql: ${TABLE}."BR_FEATURES_GEARS" ;;
  }
  dimension: br_features_java {
    type: yesno
    sql: ${TABLE}."BR_FEATURES_JAVA" ;;
  }
  dimension: br_features_pdf {
    type: yesno
    sql: ${TABLE}."BR_FEATURES_PDF" ;;
  }
  dimension: br_features_quicktime {
    type: yesno
    sql: ${TABLE}."BR_FEATURES_QUICKTIME" ;;
  }
  dimension: br_features_realplayer {
    type: yesno
    sql: ${TABLE}."BR_FEATURES_REALPLAYER" ;;
  }
  dimension: br_features_silverlight {
    type: yesno
    sql: ${TABLE}."BR_FEATURES_SILVERLIGHT" ;;
  }
  dimension: br_features_windowsmedia {
    type: yesno
    sql: ${TABLE}."BR_FEATURES_WINDOWSMEDIA" ;;
  }
  dimension: br_lang {
    type: string
    sql: ${TABLE}."BR_LANG" ;;
  }
  dimension: br_name {
    type: string
    sql: ${TABLE}."BR_NAME" ;;
  }
  dimension: br_renderengine {
    type: string
    sql: ${TABLE}."BR_RENDERENGINE" ;;
  }
  dimension: br_type {
    type: string
    sql: ${TABLE}."BR_TYPE" ;;
  }
  dimension: br_version {
    type: string
    sql: ${TABLE}."BR_VERSION" ;;
  }
  dimension: domain_sessionidx {
    type: number
    sql: ${TABLE}."DOMAIN_SESSIONIDX" ;;
  }
  dimension: domain_userid {
    type: number
    value_format_name: id
    sql: ${TABLE}."DOMAIN_USERID" ;;
  }
  dimension: dvce_ismobile {
    type: yesno
    sql: ${TABLE}."DVCE_ISMOBILE" ;;
  }
  dimension: dvce_screenheight {
    type: number
    sql: ${TABLE}."DVCE_SCREENHEIGHT" ;;
  }
  dimension: dvce_screenwidth {
    type: number
    sql: ${TABLE}."DVCE_SCREENWIDTH" ;;
  }
  dimension: dvce_type {
    type: string
    sql: ${TABLE}."DVCE_TYPE" ;;
  }
  dimension: os_family {
    type: string
    sql: ${TABLE}."OS_FAMILY" ;;
  }
  dimension: os_manufacturer {
    type: string
    sql: ${TABLE}."OS_MANUFACTURER" ;;
  }
  dimension: os_name {
    type: string
    sql: ${TABLE}."OS_NAME" ;;
  }
  dimension: os_timezone {
    type: string
    sql: ${TABLE}."OS_TIMEZONE" ;;
  }
  measure: count {
    type: count
    drill_fields: [os_name, br_name]
  }
}
