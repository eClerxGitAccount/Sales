view: dates {
  sql_table_name: dbo.Dates ;;

  dimension: date_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DateID ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Date ;;
  }

  dimension: day {
    type: number
    sql: ${TABLE}.Day ;;
  }

  dimension: day_name {
    type: string
    sql: ${TABLE}.DayName ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}.MonthName ;;
  }

  dimension: quarter {
    type: number
    sql: ${TABLE}.Quarter ;;
  }

  dimension: semester {
    type: number
    sql: ${TABLE}.Semester ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}.Week ;;
  }

  dimension: week_day {
    type: number
    sql: ${TABLE}.WeekDay ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [date_id, day_name, month_name]
  }
}
