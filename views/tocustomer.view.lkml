view:tocustomer {
  sql_table_name: informix.customer ;;
  drill_fields: [customer_id]

  dimension: customer_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.customer_id ;;
  }
  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }
  dimension: annual_income {
    type: string
    sql: ${TABLE}.annual_income ;;
  }
  dimension: area_code {
    type: string
    sql: ${TABLE}.area_code ;;
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
  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }
  dimension_group: date_of_birth {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.date_of_birth ;;
  }
  dimension: education_level {
    type: string
    sql: ${TABLE}.education_level ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: home_owner {
    type: string
    sql: ${TABLE}.home_owner ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension_group: last_order {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_order ;;
  }
  dimension: last_year_monetary_value {
    type: number
    sql: ${TABLE}.last_year_monetary_value ;;
  }
  dimension: last_year_monetary_value_inc {
    type: number
    sql: ${TABLE}.last_year_monetary_value_inc ;;
  }
  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }
  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }
  dimension: loyalty_card_number {
    type: number
    sql: ${TABLE}.loyalty_card_number ;;
  }
  dimension: marital_status {
    type: string
    sql: ${TABLE}.marital_status ;;
  }
  dimension_group: member_since {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.member_since ;;
  }
  dimension: middle_initial {
    type: string
    sql: ${TABLE}.middle_initial ;;
  }
  dimension: number_of_cars_owned {
    type: number
    sql: ${TABLE}.number_of_cars_owned ;;
  }
  dimension: number_of_children {
    type: number
    sql: ${TABLE}.number_of_children ;;
  }
  dimension: number_of_orders {
    type: number
    sql: ${TABLE}.number_of_orders ;;
  }
  dimension: occupation_industry {
    type: string
    sql: ${TABLE}.occupation_industry ;;
  }
  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }
  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }
  measure: count {
    type: count
    drill_fields: [customer_id, first_name, last_name]
  }
}
