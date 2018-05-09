view: files_processed {
  sql_table_name: dbo.FilesProcessed ;;

  dimension: file_id {
    type: number
    sql: ${TABLE}.FileId ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.FileName ;;
  }

  dimension: file_path {
    type: string
    sql: ${TABLE}.FilePath ;;
  }

  dimension_group: processed {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ProcessedDate ;;
  }

  measure: count {
    type: count
    drill_fields: [file_name]
  }
}
