view: seller_id {
  sql_table_name: dbo.SellerId ;;

  dimension: seller_id {
    type: number
    sql: ${TABLE}.SellerId ;;
  }

  dimension: seller_name {
    type: string
    sql: ${TABLE}.SellerName ;;
  }

  measure: count {
    type: count
    drill_fields: [seller_name]
  }
}
