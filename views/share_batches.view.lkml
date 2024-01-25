view: share_batches {
  sql_table_name: "PUBLIC"."SHARE_BATCHES" ;;
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
  dimension_group: deliver {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DELIVER_ON" ;;
  }
  dimension: from_name {
    type: string
    sql: ${TABLE}."FROM_NAME" ;;
  }
  dimension: message {
    type: string
    sql: ${TABLE}."MESSAGE" ;;
  }
  dimension: notify_on_view {
    type: string
    sql: ${TABLE}."NOTIFY_ON_VIEW" ;;
  }
  dimension: share_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."SHARE_ID" ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."UPDATED_AT" ;;
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
	from_name,
	users.producer_name,
	users.last_name,
	users.id,
	users.first_name,
	shares.id
	]
  }

}
