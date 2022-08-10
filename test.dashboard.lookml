- dashboard: test
  title: Milestone Tracker - Summary
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 6OsFTCJH1rPeDa7CO9ik1H
  elements:
  - title: Project Count
    name: Project Count
    model: ms_custom
    explore: milestone
    type: single_value
    fields: [project.count]
    filters:
      fact_milestone.mltask_id: NOT NULL
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Critical Path Type: milestone.milestone_workflow_type
      Phase Date: milestone.phase_date
      Reason for Change: milestone.reason_for_change
      Critical Path Status: milestone.milestone_workflow_status
      Project Owner: project.project_owner
      Project Manager: milestone.project_manager
      Project Status: project.project_status
      Project Cluster: fact_milestone.cluster
      Category: product_classification.product_category2
      Critical Path is Late: fact_milestone.workflow_is_late
      Product Name: product.product_name
      Project Name: project.project_name
      UPC: product.gtin
      Supplier Name: company.company_name
    row: 0
    col: 12
    width: 4
    height: 2
  - title: Product Count
    name: Product Count
    model: ms_custom
    explore: milestone
    type: single_value
    fields: [product.count]
    filters:
      fact_milestone.mltask_id: NOT NULL
      fact_milestone.product_id: ">0"
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Critical Path Type: milestone.milestone_workflow_type
      Phase Date: milestone.phase_date
      Reason for Change: milestone.reason_for_change
      Critical Path Status: milestone.milestone_workflow_status
      Project Owner: project.project_owner
      Project Manager: milestone.project_manager
      Project Status: project.project_status
      Project Cluster: fact_milestone.cluster
      Category: product_classification.product_category2
      Critical Path is Late: fact_milestone.workflow_is_late
      Product Name: product.product_name
      Project Name: project.project_name
      UPC: product.gtin
      Supplier Name: company.company_name
    row: 0
    col: 16
    width: 4
    height: 2
  - title: Loading Date
    name: Loading Date
    model: ms_custom
    explore: milestone
    type: looker_single_record
    fields: [project.loading_date_html_format]
    fill_fields: [project.loading_date_html_format]
    limit: 500
    show_view_names: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    title_hidden: true
    listen:
      Critical Path Type: milestone.milestone_workflow_type
      Phase Date: milestone.phase_date
      Reason for Change: milestone.reason_for_change
      Critical Path Status: milestone.milestone_workflow_status
      Project Owner: project.project_owner
      Project Manager: milestone.project_manager
      Project Status: project.project_status
      Project Cluster: fact_milestone.cluster
      Category: product_classification.product_category2
      Critical Path is Late: fact_milestone.workflow_is_late
      Product Name: product.product_name
      Project Name: project.project_name
      UPC: product.gtin
      Supplier Name: company.company_name
    row: 0
    col: 20
    width: 4
    height: 1
  - title: Milestone Tracker - Summary
    name: Milestone Tracker - Summary
    model: ms_custom
    explore: milestone
    type: looker_grid
    fields: [milestone.milestone_workflow_type, milestone.find_cp_status, project.project_name_grey,
      fact_milestone.product_count, milestone.phase_date_grey, fact_milestone.critical_path_RAG_Status,
      product_classification.product_category2, milestone.sub_category, product.gtin,
      product.product_name, milestone.reason_for_change_grey, company.supplier_name_grey,
      fact_milestone.product_route, fact_milestone.product_forum_date, fact_milestone.project_id,
      fact_milestone.product_id, fact_milestone.max_milestone_date, milestone.task_milestone_name]
    pivots: [milestone.task_milestone_name]
    filters: {}
    sorts: [milestone.task_milestone_name, fact_milestone.project_id, fact_milestone.product_id]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      product_classification.product_category2: Category
    series_cell_visualizations: {}
    conditional_formatting: [{type: equal to, value: 1, background_color: "#EA4335",
        font_color: "#EA4335", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [fact_milestone.critical_path_RAG_Status]},
      {type: equal to, value: 0, background_color: "#7CB342", font_color: "#7CB342",
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [fact_milestone.critical_path_RAG_Status]},
      {type: 'null', value: !!null '', background_color: "#ffffff", font_color: "#ffffff",
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [fact_milestone.critical_path_RAG_Status]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: -3}, max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [fact_milestone.critical_path_RAG_Status]}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [fact_milestone.project_id, fact_milestone.product_id]
    title_hidden: true
    listen:
      Critical Path Type: milestone.milestone_workflow_type
      Phase Date: milestone.phase_date
      Reason for Change: milestone.reason_for_change
      Critical Path Status: milestone.milestone_workflow_status
      Project Owner: project.project_owner
      Project Manager: milestone.project_manager
      Project Status: project.project_status
      Project Cluster: fact_milestone.cluster
      Category: product_classification.product_category2
      Critical Path is Late: fact_milestone.workflow_is_late
      Product Name: product.product_name
      Project Name: project.project_name
      UPC: product.gtin
      Supplier Name: company.company_name
    row: 2
    col: 0
    width: 24
    height: 10
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 12
    col: 4
    width: 12
    height: 2
  - title: Untitled
    name: Untitled
    model: ms_custom
    explore: milestone
    type: single_value
    fields: [milestone.navigation]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Reason for Change: milestone.reason_for_change
      Critical Path Type: milestone.milestone_workflow_type
      Project Manager: milestone.project_manager
      Phase Date: milestone.phase_date
      Critical Path Status: milestone.milestone_workflow_status
      Project Status: project.project_status
      Project Cluster: fact_milestone.cluster
      Category: product_classification.product_category2
      Critical Path is Late: fact_milestone.workflow_is_late
      Product Name: product.product_name
      Project Name: project.project_name
      UPC: product.gtin
      Supplier Name: company.company_name
    row: 0
    col: 0
    width: 4
    height: 2
  filters:
  - name: Project Status
    title: Project Status
    type: field_filter
    default_value: In Development,In Progress
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: ms_custom
    explore: milestone
    listens_to_filters: []
    field: project.project_status
  - name: Reason for Change
    title: Reason for Change
    type: field_filter
    default_value: CF,N,N Supp,N/A (Project),NE,RI,RP,SV,UG,NSC,NULL
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: ms_custom
    explore: milestone
    listens_to_filters: []
    field: milestone.reason_for_change
  - name: Project Cluster
    title: Project Cluster
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: ms_custom
    explore: milestone
    listens_to_filters: []
    field: fact_milestone.cluster
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: ms_custom
    explore: milestone
    listens_to_filters: []
    field: product_classification.product_category2
  - name: Critical Path Type
    title: Critical Path Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: ms_custom
    explore: milestone
    listens_to_filters: []
    field: milestone.milestone_workflow_type
  - name: Critical Path Status
    title: Critical Path Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: ms_custom
    explore: milestone
    listens_to_filters: []
    field: milestone.milestone_workflow_status
  - name: Critical Path is Late
    title: Critical Path is Late
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: ms_custom
    explore: milestone
    listens_to_filters: []
    field: fact_milestone.workflow_is_late
  - name: Phase Date
    title: Phase Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: ms_custom
    explore: milestone
    listens_to_filters: []
    field: milestone.phase_date
  - name: Product Name
    title: Product Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: ms_custom
    explore: milestone
    listens_to_filters: []
    field: product.product_name
  - name: Project Name
    title: Project Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: ms_custom
    explore: milestone
    listens_to_filters: []
    field: project.project_name
  - name: Project Owner
    title: Project Owner
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: ms_custom
    explore: milestone
    listens_to_filters: []
    field: project.project_owner
  - name: UPC
    title: UPC
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: ms_custom
    explore: milestone
    listens_to_filters: []
    field: product.gtin
  - name: Project Manager
    title: Project Manager
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: ms_custom
    explore: milestone
    listens_to_filters: []
    field: milestone.project_manager
  - name: Supplier Name
    title: Supplier Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: ms_custom
    explore: milestone
    listens_to_filters: []
    field: company.company_name
