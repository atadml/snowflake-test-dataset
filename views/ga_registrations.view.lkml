view: ga_registrations {
  sql_table_name: "PUBLIC"."GA_REGISTRATIONS" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DATE" ;;
  }
  dimension: registration_count {
    type: number
    sql: ${TABLE}."REGISTRATION_COUNT" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
