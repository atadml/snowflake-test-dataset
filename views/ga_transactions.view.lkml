view: ga_transactions {
  sql_table_name: "PUBLIC"."GA_TRANSACTIONS" ;;
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
  dimension: transaction_count {
    type: number
    sql: ${TABLE}."TRANSACTION_COUNT" ;;
  }
  dimension: transaction_total {
    type: string
    sql: ${TABLE}."TRANSACTION_TOTAL" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
