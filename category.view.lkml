view: category {
  sql_table_name: dbo.Category ;;

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: excludes {
    type: string
    sql: ${TABLE}.Excludes ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.FullName ;;
  }

  dimension: includes {
    type: string
    sql: ${TABLE}.Includes ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.Rank ;;
  }

  measure: count {
    type: count
    drill_fields: [full_name]
  }
}
