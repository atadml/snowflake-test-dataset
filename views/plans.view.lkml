view: plans {
  sql_table_name: "PUBLIC"."PLANS" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
  dimension: catalog_id {
    type: number
    sql: ${TABLE}."CATALOG_ID" ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}."CATEGORY" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED_AT" ;;
  }
  dimension: display_name {
    type: string
    sql: ${TABLE}."DISPLAY_NAME" ;;
  }
  dimension: requires_subscription {
    type: yesno
    sql: ${TABLE}."REQUIRES_SUBSCRIPTION" ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	display_name,
	rates.count,
	subscriptions.count,
	subscription_grants.count,
	user_plans.count
	]
  }

}
