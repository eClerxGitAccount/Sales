view: seller_key {
  sql_table_name: dbo.SellerKey ;;

  dimension: f5 {
    type: number
    sql: ${TABLE}.F5 ;;
  }

  dimension: new_length {
    type: number
    sql: ${TABLE}."New Length" ;;
  }

  dimension: original_length {
    type: number
    sql: ${TABLE}."Original Length" ;;
  }

  dimension: original_seller_name {
    type: string
    sql: ${TABLE}."Original Seller Name" ;;
  }

  dimension: revise_seller_key {
    type: string
    sql: ${TABLE}."Revise Seller Key" ;;
  }

  dimension: seller_id {
    type: number
    sql: ${TABLE}.SellerId ;;
  }

  measure: count {
    type: count
    drill_fields: [original_seller_name]
  }
}
