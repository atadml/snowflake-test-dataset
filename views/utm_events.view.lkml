view: utm_events {
  sql_table_name: "PUBLIC"."UTM_EVENTS" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
  dimension: action {
    type: string
    sql: ${TABLE}."ACTION" ;;
  }
  dimension: campaign {
    type: string
    sql: ${TABLE}."CAMPAIGN" ;;
  }
  dimension: content {
    type: string
    sql: ${TABLE}."CONTENT" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED_AT" ;;
  }
  dimension: entry_page {
    type: string
    sql: ${TABLE}."ENTRY_PAGE" ;;
  }
  dimension: gclid {
    type: string
    sql: ${TABLE}."GCLID" ;;
  }
  dimension: medium {
    type: string
    sql: ${TABLE}."MEDIUM" ;;
  }
  dimension_group: session_started {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."SESSION_STARTED_AT" ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}."SOURCE" ;;
  }
  dimension: term {
    type: string
    sql: ${TABLE}."TERM" ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."USER_ID" ;;
  }
  dimension_group: utm_data_recorded {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."UTM_DATA_RECORDED_AT" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, users.producer_name, users.last_name, users.id, users.first_name]
  }
}
