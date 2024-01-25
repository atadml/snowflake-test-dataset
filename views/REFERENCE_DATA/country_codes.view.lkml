view: country_codes {
  sql_table_name: "REFERENCE_DATA"."COUNTRY_CODES" ;;

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }
  dimension: three_letter_iso_code {
    type: string
    sql: ${TABLE}."THREE_LETTER_ISO_CODE" ;;
  }
  dimension: two_letter_iso_code {
    type: string
    sql: ${TABLE}."TWO_LETTER_ISO_CODE" ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
