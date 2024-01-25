view: user_demographics {
  sql_table_name: "PUBLIC"."USER_DEMOGRAPHICS" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED_AT" ;;
  }
  dimension: key {
    type: string
    sql: ${TABLE}."KEY" ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."UPDATED_AT" ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."USER_ID" ;;
  }
  dimension: val {
    type: string
    sql: ${TABLE}."VAL" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, users.producer_name, users.last_name, users.id, users.first_name]
  }
}
