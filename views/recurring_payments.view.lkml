view: recurring_payments {
  sql_table_name: "PUBLIC"."RECURRING_PAYMENTS" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
  dimension: amount {
    type: string
    sql: ${TABLE}."AMOUNT" ;;
  }
  dimension: attempt_number {
    type: number
    sql: ${TABLE}."ATTEMPT_NUMBER" ;;
  }
  dimension_group: billing_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."BILLING_START_DATE" ;;
  }
  dimension_group: cancelled {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CANCELLED_AT" ;;
  }
  dimension: catalog_id {
    type: number
    sql: ${TABLE}."CATALOG_ID" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED_AT" ;;
  }
  dimension: gateway_cookie {
    type: string
    sql: ${TABLE}."GATEWAY_COOKIE" ;;
  }
  dimension_group: last_billing {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_BILLING_DATE" ;;
  }
  dimension_group: next_billing {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."NEXT_BILLING_DATE" ;;
  }
  dimension: original_order_id {
    type: number
    sql: ${TABLE}."ORIGINAL_ORDER_ID" ;;
  }
  dimension: price_id {
    type: number
    sql: ${TABLE}."PRICE_ID" ;;
  }
  dimension: product_id {
    type: number
    sql: ${TABLE}."PRODUCT_ID" ;;
  }
  dimension: rate_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."RATE_ID" ;;
  }
  dimension: retry_root_id {
    type: number
    sql: ${TABLE}."RETRY_ROOT_ID" ;;
  }
  dimension: schedule_id {
    type: number
    sql: ${TABLE}."SCHEDULE_ID" ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."USER_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	users.producer_name,
	users.last_name,
	users.id,
	users.first_name,
	rates.id,
	orders.count
	]
  }

}
