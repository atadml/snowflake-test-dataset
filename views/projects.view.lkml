view: projects {
  sql_table_name: "PUBLIC"."PROJECTS" ;;
  drill_fields: [root_project_id]

  dimension: root_project_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ROOT_PROJECT_ID" ;;
  }
  dimension: account_id {
    type: number
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }
  dimension: canonical_user_id {
    type: number
    sql: ${TABLE}."CANONICAL_USER_ID" ;;
  }
  dimension: commercial_link {
    type: string
    sql: ${TABLE}."COMMERCIAL_LINK" ;;
  }
  dimension: commercial_link_title {
    type: string
    sql: ${TABLE}."COMMERCIAL_LINK_TITLE" ;;
  }
  dimension_group: created_at {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED_AT" ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DELETED_AT" ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }
  dimension_group: event {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."EVENT_TIME" ;;
  }
  dimension_group: finalized {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."FINALIZED_AT" ;;
  }
  dimension: id {
    type: number
    sql: ${TABLE}."ID" ;;
  }
  dimension_group: last_render_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_RENDER_CREATED_AT" ;;
  }
  dimension: producer_name {
    type: string
    sql: ${TABLE}."PRODUCER_NAME" ;;
  }
  dimension: project_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."PROJECT_ID" ;;
  }
  dimension: project_type {
    type: string
    sql: ${TABLE}."PROJECT_TYPE" ;;
  }
  dimension: short {
    type: yesno
    sql: ${TABLE}."SHORT" ;;
  }
  dimension_group: shredded {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."SHREDDED_AT" ;;
  }
  dimension: source_project_id {
    type: number
    sql: ${TABLE}."SOURCE_PROJECT_ID" ;;
  }
  dimension: style {
    type: string
    sql: ${TABLE}."STYLE" ;;
  }
  dimension: template_id {
    type: string
    sql: ${TABLE}."TEMPLATE_ID" ;;
  }
  dimension: tempo {
    type: number
    sql: ${TABLE}."TEMPO" ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	root_project_id,
	producer_name,
	projects.root_project_id,
	projects.producer_name,
	projects.count,
	renders.count
	]
  }

}
