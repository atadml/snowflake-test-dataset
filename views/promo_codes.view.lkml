view: promo_codes {
  sql_table_name: "PUBLIC"."PROMO_CODES" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
  dimension: code {
    type: string
    sql: ${TABLE}."CODE" ;;
  }
  dimension: disabled {
    type: number
    sql: ${TABLE}."DISABLED" ;;
  }
  dimension: limit {
    type: number
    sql: ${TABLE}."LIMIT" ;;
  }
  dimension: promo_id {
    type: number
    sql: ${TABLE}."PROMO_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, orders.count]
  }
}
