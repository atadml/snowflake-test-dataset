view: connection_reg_r3 {
  sql_table_name: "PUBLIC"."CONNECTION_REG_R3" ;;

  dimension: created_at {
    type: number
    sql: ${TABLE}."CREATED_AT" ;;
  }
  dimension: expires_at {
    type: number
    sql: ${TABLE}."EXPIRES_AT" ;;
  }
  dimension: looker {
    type: string
    sql: ${TABLE}."LOOKER" ;;
  }
  dimension: reg_key {
    type: string
    sql: ${TABLE}."REG_KEY" ;;
  }
  measure: count {
    type: count
  }
}
