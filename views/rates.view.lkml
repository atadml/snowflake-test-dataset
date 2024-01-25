view: rates {
  sql_table_name: "PUBLIC"."RATES" ;;
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
  dimension: duration {
    type: string
    sql: ${TABLE}."DURATION" ;;
  }
  dimension: plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."PLAN_ID" ;;
  }
  dimension: recurring {
    type: yesno
    sql: ${TABLE}."RECURRING" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, plans.id, plans.display_name, orders.count, recurring_payments.count]
  }
}
