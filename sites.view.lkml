view: sites {
  sql_table_name: dbo.Sites ;;

  dimension: site_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SiteId ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.Rank ;;
  }

  dimension: site_name {
    type: string
    sql: ${TABLE}."Site name" ;;
  }

  dimension: subs {
    type: string
    sql: ${TABLE}.Subs ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      site_id,
      site_name,
      site_id.count,
      vw_dashboard_input.count,
      vw_dashboard_input_compact.count,
      vw_dashboard_input_senz.count
    ]
  }
}
