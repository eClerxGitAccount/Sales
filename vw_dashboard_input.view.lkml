view: vw_dashboard_input {
  sql_table_name: dbo.vw_Dashboard_Input ;;

  dimension: cat {
    type: string
    sql: ${TABLE}.Cat ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: db_name {
    type: string
    sql: ${TABLE}."D/B Name" ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }

  dimension: level1_id {
    type: number
    sql: ${TABLE}.Level1Id ;;
  }

  dimension: level6_id {
    type: number
    sql: ${TABLE}.Level6Id ;;
  }

  dimension: level_1 {
    type: string
    sql: ${TABLE}."Level 1" ;;
  }

  dimension: level_2 {
    type: string
    sql: ${TABLE}."Level 2" ;;
  }

  dimension: level_3 {
    type: string
    sql: ${TABLE}."Level 3" ;;
  }

  dimension: level_4 {
    type: string
    sql: ${TABLE}."Level 4" ;;
  }

  dimension: level_5 {
    type: string
    sql: ${TABLE}."Level 5" ;;
  }

  dimension: level_6__series {
    type: string
    sql: ${TABLE}."Level 6 - Series" ;;
  }

  dimension: lp_lc {
    type: number
    sql: ${TABLE}."LP (LC)" ;;
  }

  dimension: lp_usd {
    type: number
    sql: ${TABLE}."LP (USD)" ;;
  }

  dimension: month_of_date {
    type: number
    sql: ${TABLE}.MonthOfDate ;;
  }

  dimension: priority_name {
    type: string
    sql: ${TABLE}.PriorityName ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.ProductId ;;
  }

  dimension: quarter_of_date {
    type: number
    sql: ${TABLE}.QuarterOfDate ;;
  }

  dimension: rrp_lc {
    type: number
    sql: ${TABLE}."RRP (LC)" ;;
  }

  dimension: rrp_usd {
    type: number
    sql: ${TABLE}."RRP (USD)" ;;
  }

  dimension: seller_id {
    type: number
    sql: ${TABLE}.SellerId ;;
  }

  dimension: seller_name {
    type: string
    sql: ${TABLE}."Seller Name" ;;
  }

  dimension: seller_rating {
    type: number
    sql: ${TABLE}."Seller Rating" ;;
  }

  dimension: seller_type {
    type: string
    sql: ${TABLE}."Seller type" ;;
  }

  dimension: semester_of_date {
    type: number
    sql: ${TABLE}.SemesterOfDate ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.Site ;;
  }

  dimension: site_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SiteId ;;
  }

  dimension: sp_lc {
    type: number
    sql: ${TABLE}."SP (LC)" ;;
  }

  dimension: sp_usd {
    type: number
    sql: ${TABLE}."SP (USD)" ;;
  }

  dimension: sub {
    type: string
    sql: ${TABLE}.Sub ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: type_mp_ppclassification {
    type: string
    sql: ${TABLE}."Type (MP_PPClassification)" ;;
  }

  dimension: type_sites {
    type: string
    sql: ${TABLE}."Type (Sites)" ;;
  }

  dimension: week_of_date {
    type: number
    sql: ${TABLE}.WeekOfDate ;;
  }

  dimension: year_of_date {
    type: number
    sql: ${TABLE}.YearOfDate ;;
  }

  measure: count {
    type: count
    drill_fields: [db_name, seller_name, priority_name, sites.site_name, sites.site_id]
  }
}
