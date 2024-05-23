view: fromareacodes {
  sql_table_name: informix.areacodes ;;

  dimension: statecode {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.statecode ;;
  }
  dimension: areacode {
    type: string
    sql: ${TABLE}.areacode ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }
  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }
  dimension: statename {
    type: string
    sql: ${TABLE}.statename ;;
  }

  dimension: location {
    type: location
    map_layer_name: us_states
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  dimension: citywithcode{
    type: string
    sql:  ${city} + ' (' + ${areacode} + ')' ;;
  }

  measure: count {
    type: count
  }
}
