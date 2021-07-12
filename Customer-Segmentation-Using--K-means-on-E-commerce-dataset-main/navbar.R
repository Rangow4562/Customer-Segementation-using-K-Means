argonNav <- argonDashNavbar(
  argonDropNav(
    title = h2(span("CUSTOMER SEGMENTATION USING K_MEANS CLUSTER",style = "color:white")), 
    src = "https://www.cascadeinsights.com/wp-content/uploads/2018/08/Market-Segmentation-Icon.png", 
    orientation = "right",
    argonDropNavTitle(title = "Welcome!"),
    argonDropNavItem(
      title = "Item 1", 
      src = "https://www.google.com", 
      icon = argonIcon("single-02")
    ),
    argonDropNavItem(
      title = "Item 2", 
      src = NULL, 
      icon = argonIcon("settings-gear-65")
    ),
    argonDropNavDivider(),
    argonDropNavItem(
      title = "Item 3", 
      src = "#", 
      icon = argonIcon("calendar-grid-58")
    )
  )
)
