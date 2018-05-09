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

explore: category {}

explore: dashboard_input_ssis {}

explore: dates {}

explore: files_processed {}

explore: level1_id {}

explore: level6_id {}

explore: mp_ppclassification {}

explore: priority {}

explore: product_id {}

explore: seller_id {}

explore: seller_key {}

explore: site_id {
  join: sites {
    type: left_outer
    sql_on: ${site_id.site_id} = ${sites.site_id} ;;
    relationship: many_to_one
  }
}

explore: sites {}

explore: subcategory_data {
  join: priority {
    type: left_outer
    sql_on: ${subcategory_data.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }
}

explore: subcontinent_codes {}

explore: sysdiagrams {}

explore: vw_dashboard_input {
  join: sites {
    type: left_outer
    sql_on: ${vw_dashboard_input.site_id} = ${sites.site_id} ;;
    relationship: many_to_one
  }
}

explore: vw_dashboard_input_compact {
  join: sites {
    type: left_outer
    sql_on: ${vw_dashboard_input_compact.site_id} = ${sites.site_id} ;;
    relationship: many_to_one
  }
}

explore: vw_dashboard_input_senz {
  join: sites {
    type: left_outer
    sql_on: ${vw_dashboard_input_senz.site_id} = ${sites.site_id} ;;
    relationship: many_to_one
  }
}
