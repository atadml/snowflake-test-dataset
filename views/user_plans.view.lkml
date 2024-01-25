view: user_plans {
  sql_table_name: "PUBLIC"."USER_PLANS" ;;
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
    sql: ${TABLE}."ENDS_AT" ;;
  }
  dimension: plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."PLAN_ID" ;;
  }
  dimension_group: starts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."STARTS_AT" ;;
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
	plans.id,
	plans.display_name,
	subscriptions.count,
	subscription_grants.count,
	users.count
	]
  }

}
