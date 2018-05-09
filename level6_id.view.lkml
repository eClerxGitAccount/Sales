view: level6_id {
  sql_table_name: dbo.Level6Id ;;

  dimension: level6_id {
    type: number
    sql: ${TABLE}.Level6Id ;;
  }

  dimension: level6_name {
    type: string
    sql: ${TABLE}.Level6Name ;;
  }

  measure: count {
    type: count
    drill_fields: [level6_name]
  }
}
