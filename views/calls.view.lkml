view: calls {
  sql_table_name: informix.calls ;;
  drill_fields: [callid]

  dimension: callid {
    primary_key: yes
    type: string
    sql: ${TABLE}.callid ;;
  }
  dimension: callresult {
    type: string
    sql: ${TABLE}.callresult ;;
  }
  dimension: calltype {
    type: string
    sql: ${TABLE}.calltype ;;
  }
  dimension: charge {
    type: number
    sql: ${TABLE}.charge ;;
  }
  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }
  dimension_group: endtime {
    type: time
    timeframes: [raw, time, second, minute, hour, date, week, month, quarter, year]
    sql: ${TABLE}.endtime ;;
  }
  dimension: fromnum {
    type: string
    sql: ${TABLE}.fromnum ;;
  }
  dimension_group: starttime {
    type: time
    timeframes: [raw, time, second, minute, hour, date, week, month, quarter, year]
    sql: ${TABLE}.starttime ;;
  }
  dimension: tonum {
    type: string
    sql: ${TABLE}.tonum ;;
  }

  dimension: fromareacode {
    type: string
    sql: ${TABLE}.fromareacode ;;
  }

  dimension: toareacode {
    type: string
    sql: ${TABLE}.toareacode ;;
  }

  measure: count {
    type: count

  }

  measure: avg_duration {
    type: average
    value_format: "#.###"
    # milli seconds
    sql: ${TABLE}.duration/1000/60;;
  }

  measure: avg_charge {
    type: average
    value_format: "#.###"
    sql: ${TABLE}.charge;;
  }

}
