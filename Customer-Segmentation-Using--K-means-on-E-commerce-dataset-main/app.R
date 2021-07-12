library(shiny)
library(argonR)
library(argonDash)
library(magrittr)
library(DT)
library(plotly)
library(anicon)
library(ggradar)
library(dplyr)
library(scales)
library(tibble)
library(fresh)
library(shiny)
library(shinydashboard)
library(ggplot2)
library(plotly)
library(DT)
library(shiny)
library(ECharts2Shiny)
library(leaflet)
library(threejs)
library(png)
library(dplyr)
library(treemap)
library(d3treeR)
library(datasets)
library(rstatix)
library(dslabs)
library(tidyverse)
library(gplots)
library(readxl)
library(knitr)
# template
source("sidebar.R")
source("navbar.R")
source("header.R")
source("footer.R")

# elements
source("cards_tab.R")
source("tabsets_tab.R")
source("alerts_tab.R")
source("medias_tab.R")
source("items_tab.R")
source("effects_tab.R")
source("tables_tab.R")

# App



shiny::shinyApp(
  ui = argonDashPage(
    title = "Argon Dashboard Demo",
    author = "David",
    description = "Argon Dash Test",
    sidebar = argonSidebar,
    navbar = argonNav, 
    header = argonHeader,
    body = argonDashBody(
      argonTabItems(
        tables_tab,
        cards_tab,
        tabsets_tab,
        alerts_tab,
        images_tab,
        items_tab,
        effects_tab
      )
    ),
    footer = argonFooter
  ),
  server = function(input, output) {
    output$distPlot <- renderPlot({
      hist(rnorm(input$obs))
    })
    
    output$argonTable <- DT::renderDataTable(datatable(custData[, rep(1:15)],options = list(
      pageLength = 8,
      scrollY="500p",
      scrollX = TRUE
      
    )))
    
    output$plot <- renderPlot({
      Transactions_per_Country <- custData %>%
        group_by(Country) %>%
        summarise('Number of Transcations' = n( )) %>%
        arrange(desc(`Number of Transcations`)) %>%
        top_n(10)
      
      names(Transactions_per_Country) <- c("Country", "Number of Transactions")
      
      
      
      
      Transaction_per_Country_Visz <- ggplot(head(Transactions_per_Country,10), aes(x=reorder(Country,-`Number of Transactions`), y=`Number of Transactions`)) +
        geom_bar(stat = 'identity', fill = '#647dee') +
        scale_y_continuous(labels = comma) +
        geom_text(aes(label = `Number of Transactions`), vjust = -0.5) +
        xlab('Countries') +
        ylab('Number of Transactions') +
        theme(panel.background = element_blank()) +
        theme_minimal() 
      print(Transaction_per_Country_Visz)
    })
    
    output$plot1 <- renderPlot({
      topFiveCountries <- custData %>%
        filter(Country == 'Netherlands' | Country == 'EIRE' | Country == 'Germany' | Country == 'France' | Country == 'Australia')
      
      topFiveCountrySummary <- topFiveCountries%>%
        group_by(Country,date)%>%
        summarise(revenue=sum(Totalprice),transactions=n_distinct(InvoiceNo),customers=n_distinct(CustomerID))%>%
        mutate(aveOrdval=(round((revenue/transactions),2)))%>%
        ungroup()%>%
        arrange(desc(revenue))
      
      Transaction_per_Country <- ggplot(topFiveCountrySummary, aes(x = Country, y = revenue)) +
        geom_bar(stat = 'identity', fill = '#647dee') +
        scale_y_continuous(labels = comma) +
        xlab('Countries') +
        ylab('Revenue') +
        theme(panel.background = element_blank()) +
        theme_minimal() 
      print(Transaction_per_Country)
      
    })
  
    output$plot2 <- renderPlotly({
      topFiveCountries <- custData %>%
        filter(Country == 'Netherlands' | Country == 'EIRE' | Country == 'Germany' | Country == 'France' | Country == 'Australia')
      
      topFiveCountrySummary <- topFiveCountries%>%
        group_by(Country,date)%>%
        summarise(revenue=sum(Totalprice),transactions=n_distinct(InvoiceNo),customers=n_distinct(CustomerID))%>%
        mutate(aveOrdval=(round((revenue/transactions),2)))%>%
        ungroup()%>%
        arrange(desc(revenue))
      
      fig <- plot_ly(topFiveCountrySummary, x = ~date, y = ~revenue, color = ~Country) 
      fig <- fig %>% add_lines()
      fig
      
      
    })
    
    output$plot3 <- renderPlotly({
      topFiveCountries <- custData %>%
        filter(Country == 'Netherlands' | Country == 'EIRE' | Country == 'Germany' | Country == 'France' | Country == 'Australia')
      
      topFiveCountrySummary <- topFiveCountries%>%
        group_by(Country,date)%>%
        summarise(revenue=sum(Totalprice),transactions=n_distinct(InvoiceNo),customers=n_distinct(CustomerID))%>%
        mutate(aveOrdval=(round((revenue/transactions),2)))%>%
        ungroup()%>%
        arrange(desc(revenue))
     p <- ggplot(topFiveCountrySummary, aes(x = Country, y = aveOrdval, fill = Country)) + geom_boxplot() + labs(x = ' Country', y = 'Average Order Value', title = '') + scale_y_log10()+ theme(panel.background = element_blank())
    
     fig <- ggplotly(p)
     
     fig
    })
    
    output$plot4 <- renderPlotly({
      p <- custData %>%
        group_by(date) %>%
        summarise(revenue = sum(Totalprice)) %>%
        ggplot(aes(x =date, y=revenue))+ geom_line()+geom_smooth(method = 'auto', se = FALSE)+labs(x = 'Date', y='Revenue',title='') + theme(panel.background = element_blank())
      ggplotly(p)
    })
    
    output$plot5 <- renderPlotly({
      weekdaySummary <- custData %>%
        group_by(date, dayOfWeek) %>%
        summarise(revenue=sum(Totalprice),transactions = n_distinct(InvoiceNo)) %>%
        mutate(aveOrdval=(round((revenue/transactions),2))) %>%
        ungroup()
      head(weekdaySummary, n=10)
      
      p <- ggplot(weekdaySummary, aes(x = dayOfWeek, y = revenue,fill= dayOfWeek)) + geom_boxplot() + labs(x ='Day of the Week', y = 'Revenue', title = '')+ theme(panel.background = element_blank())
      ggplotly(p)
    })
    
    output$plot6 <- renderPlotly({
      weekdaySummary <- custData %>%
        group_by(date, dayOfWeek) %>%
        summarise(revenue=sum(Totalprice),transactions = n_distinct(InvoiceNo)) %>%
        mutate(aveOrdval=(round((revenue/transactions),2))) %>%
        ungroup()
      head(weekdaySummary, n=10)
      p <- ggplot(weekdaySummary,aes(x=dayOfWeek,y=aveOrdval,fill=dayOfWeek))+geom_boxplot()+labs(x='Day of the week',y='Average Order Value',title='')+ theme(panel.background = element_blank())
      ggplotly(p)
    })
    
    output$plot7 <- renderPlotly({
      weekdaySummary <- custData %>%
        group_by(date, dayOfWeek) %>%
        summarise(revenue=sum(Totalprice),transactions = n_distinct(InvoiceNo)) %>%
        mutate(aveOrdval=(round((revenue/transactions),2))) %>%
        ungroup()
      head(weekdaySummary, n=10)
      p <- ggplot(weekdaySummary, aes(transactions, fill=dayOfWeek))+geom_density(alpha=0.2)+ theme(panel.background = element_blank())
    ggplotly(p)
      })
    
    
    getPage <- function() {
      return(includeHTML("C:\\Users\\raksh\\OneDrive\\Documents\\project\\New folder\\K-means.html"))
    }
    
    output$inc <- renderUI({getPage()})
    

    
    
  }
)