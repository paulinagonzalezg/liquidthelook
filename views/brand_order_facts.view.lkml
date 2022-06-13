# If necessary, uncomment the line below to include explore_source.
# include: "liquid-paulinag.model.lkml"

view: brand_order_facts {
  derived_table: {
    explore_source: order_items {
      column: brand { field: products.brand }
      column: total_revenue {}
    }
  }
  dimension: brand {}
  dimension: total_revenue {
    value_format: "$#,##0.00"
    type: number
  }
}
