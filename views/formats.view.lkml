view: formats {
  sql_table_name: "PUBLIC"."FORMATS" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
  dimension_group: completed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."COMPLETED_AT" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED_AT" ;;
  }
  dimension: error_class {
    type: number
    sql: ${TABLE}."ERROR_CLASS" ;;
  }
  dimension_group: errored {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."ERRORED_AT" ;;
  }
  dimension: online {
    type: yesno
    sql: ${TABLE}."ONLINE" ;;
  }
  dimension_group: queued {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."QUEUED_AT" ;;
  }
  dimension: share_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."SHARE_ID" ;;
  }
  dimension: size {
    type: number
    sql: ${TABLE}."SIZE" ;;
  }
  dimension_group: started {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."STARTED_AT" ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, shares.id]
  }
}
