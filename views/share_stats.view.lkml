view: share_stats {
  sql_table_name: "PUBLIC"."SHARE_STATS" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
  dimension: count_share {
    type: number
    sql: ${TABLE}."COUNT" ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DATE" ;;
  }
  dimension: page_domain {
    type: string
    sql: ${TABLE}."PAGE_DOMAIN" ;;
  }
  dimension: render_unique_key {
    type: string
    sql: ${TABLE}."RENDER_UNIQUE_KEY" ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}."SOURCE" ;;
  }
  dimension: stat_type {
    type: string
    sql: ${TABLE}."STAT_TYPE" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
