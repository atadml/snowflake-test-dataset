view: users {
  sql_table_name: "PUBLIC"."USERS" ;;
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
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DELETED_AT" ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }
  dimension: email_deliverable {
    type: yesno
    sql: ${TABLE}."EMAIL_DELIVERABLE" ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }
  dimension: geolocated_country_code {
    type: string
    sql: ${TABLE}."GEOLOCATED_COUNTRY_CODE" ;;
  }
  dimension_group: last_login {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_LOGIN_AT" ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }
  dimension: producer_name {
    type: string
    sql: ${TABLE}."PRODUCER_NAME" ;;
  }
  dimension: send_promotional_email {
    type: yesno
    sql: ${TABLE}."SEND_PROMOTIONAL_EMAIL" ;;
  }
  dimension: send_updates_email {
    type: yesno
    sql: ${TABLE}."SEND_UPDATES_EMAIL" ;;
  }
  dimension: signup_plan_category {
    type: string
    sql: ${TABLE}."SIGNUP_PLAN_CATEGORY" ;;
  }
  dimension: signup_source {
    type: string
    sql: ${TABLE}."SIGNUP_SOURCE" ;;
  }
  dimension: time_zone {
    type: string
    sql: ${TABLE}."TIME_ZONE" ;;
  }
  dimension: unique_key {
    type: string
    sql: ${TABLE}."UNIQUE_KEY" ;;
  }
  dimension: user_plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."USER_PLAN_ID" ;;
  }
  measure: count_dist {
    type: count_distinct
    sql:  ${id} ;;
    drill_fields: [detail*]
  }

  measure: total_LTV {
    type: number
    sql: ${orders.total_cost} ;;
  }

  measure: average_LTV {
    type: number
    sql: ${total_LTV} / ${count_dist};;
  }

  measure: avg_lifetime {
    type: average
    sql: DATEDIFF(year, ${TABLE}.created_at, CURRENT_DATE()) ;;
  }

  measure: avg_yearly_value {
    type: number
    sql: ${average_LTV} / NULLIF(${avg_lifetime}, 0) ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  producer_name,
  last_name,
  first_name,
  user_plans.id,
  logins.count,
  orders.count,
  recurring_payments.count,
  share_batches.count,
  subscriptions.count,
  subscription_grants.count,
  user_demographics.count,
  user_plans.count,
  utm_events.count
  ]
  }

}
