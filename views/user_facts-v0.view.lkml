view: sql_runner_query_0 {
  derived_table: {
    sql: SELECT
          t1.user_id AS user_id
          ,COUNT(distinct t0.order_id) AS lifetime_order_count
          ,SUM(t0.sale_price) AS lifetime_revenue
          ,MIN(t1.created_at) AS first_order_date
          ,MAX(t1.created_at) AS latest_order_date
          -- *
      FROM
          public.order_items AS t0
          JOIN
              public.orders  AS t1
              ON t0.order_id = t1.id
      GROUP BY
          t1.user_id
       ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: [detail*]
  }

  dimension: user_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: lifetime_order_count {
    type: number
    sql: ${TABLE}.lifetime_order_count ;;
  }

  dimension: lifetime_revenue {
    type: number
    sql: ${TABLE}.lifetime_revenue ;;
  }

  dimension_group: first_order_date {
    type: time
    sql: ${TABLE}.first_order_date ;;
  }

  dimension_group: latest_order_date {
    type: time
    sql: ${TABLE}.latest_order_date ;;
  }

  set: detail {
    fields: [user_id, lifetime_order_count, lifetime_revenue, first_order_date_time, latest_order_date_time]
  }
}
