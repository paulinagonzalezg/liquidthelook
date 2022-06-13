# If necessary, uncomment the line below to include explore_source.
# include: "liquid-paulinag.model.lkml"

view: brand_order_facts {
  derived_table: {
    explore_source: order_items {
      column: brand { field: products.brand }
      column: total_revenue {}
      derived_column: brand_rank {
      sql: row_number() over (order by total_revenue desc) ;;
      }
    }
  }
  dimension: brand_rank {
    hidden: yes
    type: number
  }
  dimension: brand {}
  dimension: total_revenue {
    value_format: "$#,##0.00"
    type: number
  }

  dimension: brand_rank_concat {
    label: "Brand Name"
    type: string
    sql: ${brand_rank} || ') ' || ${brand} ;;
  }
  dimension: brand_rank_top_5 {
    hidden: yes
    type: yesno
    sql: ${brand_rank} <= 5 ;;
  }
  dimension: brand_rank_grouped {
    label: "Brand Name Grouped"
    type: string
    sql: case when ${brand_rank_top_5} then ${brand_rank_concat} else '6) Other' end ;;
  }
}
