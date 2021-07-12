argonHeader <- argonDashHeader(
  gradient = TRUE,
  color = "primary",
  height = 200,
  separator = FALSE,
  separator_color = "primary",
  argonRow(
    argonInfoCard(
      value = round(sum(n_distinct(custData$CustomerID), na.rm=TRUE),0), 
      title = "Total Customers", 
      description = "", 
      icon = icon("users"), 
      icon_background = "danger",
      hover_lift = TRUE
      
    ),
    argonInfoCard(
      value = round(sum(n_distinct(custData$InvoiceNo), na.rm=TRUE),0), 
      title = "Total-Transactions", 
      description = "", 
      icon = icon("people-arrows"), 
      icon_background = "danger",
      hover_lift =  TRUE
    ),
    argonInfoCard(
      value = round(sum(custData$Quantity, na.rm=TRUE),0), 
      title = "Quantity Sold", 
      description = "", 
      icon = icon("quora"),
      icon_background = "danger",
      hover_lift = TRUE
    ),
    argonInfoCard(
      value = round(sum(custData$Totalprice, na.rm=TRUE),0), 
      title = "Total-Sales", 
      description = "", 
      icon = icon("dollar-sign"), 
      icon_background = "danger",
      hover_lift = TRUE
    )
  )
)
