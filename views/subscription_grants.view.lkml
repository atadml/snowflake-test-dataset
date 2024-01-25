view: subscription_grants {
  sql_table_name: "PUBLIC"."SUBSCRIPTION_GRANTS" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
  dimension: admin_id {
    type: number
    sql: ${TABLE}."ADMIN_ID" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED_AT" ;;
  }
  dimension: duration {
    type: number
    sql: ${TABLE}."DURATION" ;;
  }
  dimension: education_application_id {
    type: number
    sql: ${TABLE}."EDUCATION_APPLICATION_ID" ;;
  }
  dimension: gift_id {
    type: number
    sql: ${TABLE}."GIFT_ID" ;;
  }
  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."ORDER_ID" ;;
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
  dimension: reason {
    type: string
    sql: ${TABLE}."REASON" ;;
  }
  dimension: referree_order_id {
    type: number
    sql: ${TABLE}."REFERREE_ORDER_ID" ;;
  }
  dimension_group: revoked {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."REVOKED_AT" ;;
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
  dimension: viral_share_id {
    type: number
    sql: ${TABLE}."VIRAL_SHARE_ID" ;;
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
	plans.id,
	plans.display_name,
	user_plans.id,
	promotions.id,
	orders.id,
	subscriptions.count
	]
  }

}
