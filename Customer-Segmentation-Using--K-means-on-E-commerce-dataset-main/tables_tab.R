header = argonHeader
tables_tab <- argonTabItem(
  tabName = "tables",
  DT::dataTableOutput("argonTable1"),
  argonH1("E-commerce Dataset", display = 4),
  argonCard(
    width = 12,
    src = NULL,
    hover_lift = TRUE,
    shadow = TRUE,
    shadow_size = NULL,
    hover_shadow = FALSE,
    border_level = 0,
    icon = argonIcon("atom"),
    status = "danger",
    background_color = "primary",
    gradient = TRUE, 
    floating = FALSE,
    argonRow(
      argonColumn(
        width = 6,
      ),
      argonColumn(width = 12,DT::dataTableOutput("argonTable"))
    )
  ) 
)
