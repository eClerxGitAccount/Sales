connection: "looker_trial"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: lookermodel_rs_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lookermodel_rs_default_datagroup

explore: dashboard_input_ssis {
  join:product_id  {
    sql_on: ${dashboard_input_ssis.ss_sku_code} = ${product_id.product_name} ;;
    relationship: many_to_one
  }
}
