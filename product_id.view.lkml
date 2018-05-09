view: product_id {
  sql_table_name: dbo.ProductId ;;

  dimension: product_id {
    type: number
    sql: ${TABLE}.ProductId ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.ProductName ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
