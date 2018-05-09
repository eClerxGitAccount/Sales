view: level1_id {
  sql_table_name: dbo.Level1Id ;;

  dimension: level1_id {
    type: number
    sql: ${TABLE}.Level1Id ;;
  }

  dimension: level1_name {
    type: string
    sql: ${TABLE}.Level1Name ;;
  }

  measure: count {
    type: count
    drill_fields: [level1_name]
  }
}
