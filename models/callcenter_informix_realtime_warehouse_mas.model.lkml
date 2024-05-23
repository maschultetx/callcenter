connection: "informix_realtime_warehouse_gcp_prod_mas"
label: "CallCenter Informix RealTime Warehouse"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: callcenter_informix_realtime_warehouse_mas_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "0 seconds"
}

persist_with: callcenter_informix_realtime_warehouse_mas_default_datagroup

explore: calls {

    join: fromareacodes {
    type: left_outer
    sql_on: ${calls.fromareacode} = ${fromareacodes.areacode} ;;
    relationship: many_to_one
  }


  join: toareacodes {
    type: left_outer
    sql_on: ${calls.toareacode} = ${toareacodes.areacode} ;;
    relationship: many_to_one
  }

}
