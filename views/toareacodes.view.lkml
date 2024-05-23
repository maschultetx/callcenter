view: toareacodes {
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
    group_label: "Address Info"
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
    link: {
      #url: "https://actianavalanchepartner.cloud.looker.com/dashboards/63?Address=%22{{ customer.address._value | encode_uri}}%22&Location={{customer.location._value | encode_uri}}&Custid={{customer.custid._value | encode_uri}}"
      label: "City Detail - not implemented"
      icon_url: "https://img.icons8.com/cotton/2x/worldwide-location.png"
    }
  }

  dimension: citywithcode{
    type: string
    sql:  ${city} + ' (' + ${areacode} + ')' ;;
  }

  measure: count {
    type: count
  }
}
