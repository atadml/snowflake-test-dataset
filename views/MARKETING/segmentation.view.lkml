view: segmentation {
  sql_table_name: "MARKETING"."SEGMENTATION" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED_AT" ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DELETED_AT" ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }
  dimension: email_deliverable {
    type: yesno
    sql: ${TABLE}."EMAIL_DELIVERABLE" ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }
  dimension: lead_segment {
    type: string
    sql: ${TABLE}."LEAD_SEGMENT" ;;
  }
  dimension: lead_source {
    type: string
    sql: ${TABLE}."LEAD_SOURCE" ;;
  }
  dimension: self_segment {
    type: string
    sql: ${TABLE}."SELF_SEGMENT" ;;
  }
  dimension: send_promotional_email {
    type: yesno
    sql: ${TABLE}."SEND_PROMOTIONAL_EMAIL" ;;
  }
  dimension: send_updates_email {
    type: yesno
    sql: ${TABLE}."SEND_UPDATES_EMAIL" ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."UPDATED_AT" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, first_name, last_name]
  }
}
