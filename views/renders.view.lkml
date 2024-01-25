view: renders {
  sql_table_name: "PUBLIC"."RENDERS" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
  dimension: available_cover_images {
    type: string
    sql: ${TABLE}."AVAILABLE_COVER_IMAGES" ;;
  }
  dimension_group: completed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."COMPLETED_AT" ;;
  }
  dimension: cover_id {
    type: number
    sql: ${TABLE}."COVER_ID" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED_AT" ;;
  }
  dimension: directed {
    type: yesno
    sql: ${TABLE}."DIRECTED" ;;
  }
  dimension: edited {
    type: yesno
    sql: ${TABLE}."EDITED" ;;
  }
  dimension: favorite {
    type: yesno
    sql: ${TABLE}."FAVORITE" ;;
  }
  dimension: forced_watermark {
    type: yesno
    sql: ${TABLE}."FORCED_WATERMARK" ;;
  }
  dimension: images_used {
    type: number
    sql: ${TABLE}."IMAGES_USED" ;;
  }
  dimension: length {
    type: number
    sql: ${TABLE}."LENGTH" ;;
  }
  dimension: parent_id {
    type: number
    sql: ${TABLE}."PARENT_ID" ;;
  }
  dimension: project_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."PROJECT_ID" ;;
  }
  dimension_group: queued {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."QUEUED_AT" ;;
  }
  dimension: short {
    type: yesno
    sql: ${TABLE}."SHORT" ;;
  }
  dimension: song_id {
    type: number
    sql: ${TABLE}."SONG_ID" ;;
  }
  dimension: stale {
    type: yesno
    sql: ${TABLE}."STALE" ;;
  }
  dimension_group: started {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."STARTED_AT" ;;
  }
  dimension: template_id {
    type: string
    sql: ${TABLE}."TEMPLATE_ID" ;;
  }
  dimension: tempo {
    type: number
    sql: ${TABLE}."TEMPO" ;;
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
    drill_fields: [id, projects.root_project_id, projects.producer_name]
  }
}
