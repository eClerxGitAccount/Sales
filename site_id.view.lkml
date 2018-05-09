view: site_id {
  sql_table_name: dbo.SiteId ;;

  dimension: site_id {
    type: number
    sql: ${TABLE}.SiteId ;;
  }

  dimension: site_name {
    type: string
    sql: ${TABLE}.SiteName ;;
  }

  measure: count {
    type: count
    drill_fields: [site_name]
  }
}
