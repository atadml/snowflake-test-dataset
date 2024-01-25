view: orders {
  sql_table_name: "PUBLIC"."ORDERS" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
  dimension: auto_renewal {
    type: yesno
    sql: ${TABLE}."AUTO_RENEWAL" ;;
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
  dimension: currency {
    type: string
    sql: ${TABLE}."CURRENCY" ;;
  }
  dimension: currency_total_cost {
    type: number
    sql: ${TABLE}."CURRENCY_TOTAL_COST" ;;
  }
  dimension_group: declined {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DECLINED_AT" ;;
  }
  dimension: exchanged_total_cost {
    type: number
    sql: ${TABLE}."EXCHANGED_TOTAL_COST" ;;
  }
  dimension: financial_status {
    type: string
    sql: ${TABLE}."FINANCIAL_STATUS" ;;
  }
  dimension: financial_status_code {
    type: number
    sql: ${TABLE}."FINANCIAL_STATUS_CODE" ;;
  }
  dimension: is_renewal {
    type: yesno
    sql: ${TABLE}."IS_RENEWAL" ;;
  }
  dimension: item_code {
    type: number
    sql: ${TABLE}."ITEM_CODE" ;;
  }
  dimension: order_address_id {
    type: number
    sql: ${TABLE}."ORDER_ADDRESS_ID" ;;
  }
  dimension: order_number {
    type: string
    sql: ${TABLE}."ORDER_NUMBER" ;;
  }
  dimension: price_id {
    type: number
    sql: ${TABLE}."PRICE_ID" ;;
  }
  dimension_group: processed_at {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."PROCESSED_AT" ;;
  }
  dimension: promo_code_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."PROMO_CODE_ID" ;;
  }
  dimension: promo_currency_discount_amount {
    type: number
    sql: ${TABLE}."PROMO_CURRENCY_DISCOUNT_AMOUNT" ;;
  }
  dimension: promo_currency_discount_country_code {
    type: string
    sql: ${TABLE}."PROMO_CURRENCY_DISCOUNT_COUNTRY_CODE" ;;
  }
  dimension: promo_discount_percentage {
    type: number
    sql: ${TABLE}."PROMO_DISCOUNT_PERCENTAGE" ;;
  }
  dimension: promo_id {
    type: number
    sql: ${TABLE}."PROMO_ID" ;;
  }
  dimension: promotion_discount_amount {
    type: number
    sql: ${TABLE}."PROMOTION_DISCOUNT_AMOUNT" ;;
  }
  dimension: prorated_credit {
    type: number
    sql: ${TABLE}."PRORATED_CREDIT" ;;
  }
  dimension: purchase_promotion_id {
    type: number
    sql: ${TABLE}."PURCHASE_PROMOTION_ID" ;;
  }
  dimension: rate_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."RATE_ID" ;;
  }
  dimension: recurring_payment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."RECURRING_PAYMENT_ID" ;;
  }
  dimension: referral_discount_amount {
    type: number
    sql: ${TABLE}."REFERRAL_DISCOUNT_AMOUNT" ;;
  }
  dimension: referrer_id {
    type: number
    sql: ${TABLE}."REFERRER_ID" ;;
  }
  dimension: refund_number {
    type: string
    sql: ${TABLE}."REFUND_NUMBER" ;;
  }
  dimension_group: refunded {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."REFUNDED_AT" ;;
  }
  dimension_group: reversed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."REVERSED_AT" ;;
  }
  dimension: service_id {
    type: number
    sql: ${TABLE}."SERVICE_ID" ;;
  }
  dimension_group: service_processed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."SERVICE_PROCESSED_AT" ;;
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

  measure: total_cost {
    type: sum
    drill_fields: [detail*]
  }



  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  promo_codes.id,
  users.producer_name,
  users.last_name,
  users.id,
  users.first_name,
  recurring_payments.id,
  rates.id,
  partial_refunds.count,
  subscriptions.count,
  subscription_grants.count
  ]
  }

}
