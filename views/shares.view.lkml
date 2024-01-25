view: shares {
  sql_table_name: "PUBLIC"."SHARES" ;;
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
  dimension_group: delivered {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DELIVERED_AT" ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }
  dimension_group: errored {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."ERRORED_AT" ;;
  }
  dimension_group: hidden {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."HIDDEN_AT" ;;
  }
  dimension: recipient_id {
    type: number
    sql: ${TABLE}."RECIPIENT_ID" ;;
  }
  dimension: render_share_batch_id {
    type: number
    sql: ${TABLE}."RENDER_SHARE_BATCH_ID" ;;
  }
  dimension: skin {
    type: string
    sql: ${TABLE}."SKIN" ;;
  }
  dimension: tracked_url_id {
    type: number
    sql: ${TABLE}."TRACKED_URL_ID" ;;
  }
  dimension: unique_key {
    type: string
    sql: ${TABLE}."UNIQUE_KEY" ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."UPDATED_AT" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, formats.count, share_batches.count]
  }
}
