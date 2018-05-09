view: subcategory_data {
  sql_table_name: dbo.SubcategoryData ;;

  dimension: gscm_div {
    type: string
    sql: ${TABLE}.GSCM_DIV ;;
  }

  dimension: launch_year {
    type: string
    sql: ${TABLE}."Launch year" ;;
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

  dimension: model_cd {
    type: string
    sql: ${TABLE}.MODEL_CD ;;
  }

  dimension: priority_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PriorityId ;;
  }

  dimension: subsidiary_nm {
    type: string
    sql: ${TABLE}.SUBSIDIARY_NM ;;
  }

  measure: count {
    type: count
    drill_fields: [priority.id, priority.priority_name]
  }
}
