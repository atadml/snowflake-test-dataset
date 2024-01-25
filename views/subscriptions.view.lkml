view: subscriptions {
  sql_table_name: "PUBLIC"."SUBSCRIPTIONS" ;;
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
  dimension_group: ends {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."ENDS_ON" ;;
  }
  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."ORDER_ID" ;;
  }
  dimension: original_order_id {
    type: number
    sql: ${TABLE}."ORIGINAL_ORDER_ID" ;;
  }
  dimension: plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."PLAN_ID" ;;
  }
  dimension: promotion_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."PROMOTION_ID" ;;
  }
  dimension_group: starts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."STARTS_ON" ;;
  }
  dimension: subscription_grant_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."SUBSCRIPTION_GRANT_ID" ;;
  }
  dimension: subscription_type {
    type: string
    sql: ${TABLE}."SUBSCRIPTION_TYPE" ;;
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
  dimension: user_plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."USER_PLAN_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	subscription_grants.id,
	users.producer_name,
	users.last_name,
	users.id,
	users.first_name,
	orders.id,
	user_plans.id,
	plans.id,
	plans.display_name,
	promotions.id
	]
  }

}
