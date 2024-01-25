view: promotions {
  sql_table_name: "PUBLIC"."PROMOTIONS" ;;
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
  dimension: affiliate_id {
    type: number
    sql: ${TABLE}."AFFILIATE_ID" ;;
  }
  dimension: arbitrage {
    type: string
    sql: ${TABLE}."ARBITRAGE" ;;
  }
  dimension: business_type {
    type: string
    sql: ${TABLE}."BUSINESS_TYPE" ;;
  }
  dimension: commission_rate {
    type: number
    sql: ${TABLE}."COMMISSION_RATE" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED_AT" ;;
  }
  dimension: credit_quota {
    type: number
    sql: ${TABLE}."CREDIT_QUOTA" ;;
  }
  dimension: credits_granted {
    type: number
    sql: ${TABLE}."CREDITS_GRANTED" ;;
  }
  dimension: currency_code {
    type: string
    sql: ${TABLE}."CURRENCY_CODE" ;;
  }
  dimension: education_grant {
    type: number
    sql: ${TABLE}."EDUCATION_GRANT" ;;
  }
  dimension_group: ends {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."ENDS_AT" ;;
  }
  dimension: front_page_message {
    type: string
    sql: ${TABLE}."FRONT_PAGE_MESSAGE" ;;
  }
  dimension: full_length_credit_grant {
    type: number
    sql: ${TABLE}."FULL_LENGTH_CREDIT_GRANT" ;;
  }
  dimension: key {
    type: string
    sql: ${TABLE}."KEY" ;;
  }
  dimension: message {
    type: string
    sql: ${TABLE}."MESSAGE" ;;
  }
  dimension: plus_grant {
    type: number
    sql: ${TABLE}."PLUS_GRANT" ;;
  }
  dimension: plus_hd_grant {
    type: number
    sql: ${TABLE}."PLUS_HD_GRANT" ;;
  }
  dimension: price_discount {
    type: number
    sql: ${TABLE}."PRICE_DISCOUNT" ;;
  }
  dimension: pro_grant {
    type: number
    sql: ${TABLE}."PRO_GRANT" ;;
  }
  dimension: r480_p_credit_grant {
    type: number
    sql: ${TABLE}."R480P_CREDIT_GRANT" ;;
  }
  dimension: r720_p_credit_grant {
    type: number
    sql: ${TABLE}."R720P_CREDIT_GRANT" ;;
  }
  dimension: required_item_code {
    type: number
    sql: ${TABLE}."REQUIRED_ITEM_CODE" ;;
  }
  dimension: required_subscription_type {
    type: string
    sql: ${TABLE}."REQUIRED_SUBSCRIPTION_TYPE" ;;
  }
  dimension: reseller_grant {
    type: number
    sql: ${TABLE}."RESELLER_GRANT" ;;
  }
  dimension_group: starts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."STARTS_AT" ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }
  dimension: upgrade_only {
    type: yesno
    sql: ${TABLE}."UPGRADE_ONLY" ;;
  }
  dimension: user_quota {
    type: number
    sql: ${TABLE}."USER_QUOTA" ;;
  }
  dimension: user_type {
    type: string
    sql: ${TABLE}."USER_TYPE" ;;
  }
  dimension: welcome_message {
    type: string
    sql: ${TABLE}."WELCOME_MESSAGE" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, subscriptions.count, subscription_grants.count]
  }
}
