view: priority {
  sql_table_name: dbo.Priority ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: priority_name {
    type: string
    sql: ${TABLE}.PriorityName ;;
  }

  measure: count {
    type: count
    drill_fields: [id, priority_name, subcategory_data.count]
  }
}
