view: subcontinent_codes {
  sql_table_name: dbo.SubcontinentCodes ;;

  dimension: full_name {
    type: string
    sql: ${TABLE}."Full Name" ;;
  }

  dimension: subs {
    type: string
    sql: ${TABLE}.Subs ;;
  }

  measure: count {
    type: count
    drill_fields: [full_name]
  }
}
