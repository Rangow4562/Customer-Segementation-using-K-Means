cards_tab <- argonTabItem(
  header = argonHeader,
  tabName = "cards",
  argonColumn(
    width = 12,
    argonTabSet(
      id = "tab-1",
      card_wrapper = TRUE,
      horizontal = TRUE,
      circle = FALSE,
      size = "sm",
      width = 12,
      iconList = lapply(X = 1:3, FUN = argonIcon, name = "atom"),
      argonTab(
        tabName = "VISULIZATION-1",
        active = TRUE,
        argonH1("Countries Sales Visulization", display = 4),
   argonRow(
    argonCard(
      width = 6,
      src = NULL,
      icon = icon("cogs"),
      status = "primary",
      shadow = TRUE,
      border_level = 2,
      hover_lift = TRUE,
      hover_shadow = TRUE,
      title = h2("Top 10 Countries by Number of Transactions",style = "color:#647dee"),
      argonRow(
        argonColumn(
          width = 12
        ),
        argonColumn(width = 12, plotOutput("plot"))
      )
    ),
    br(), br(),
    argonCard(
      width = 6,
      title =  h2("Top 5 Countries of Revenue excluding UK",style = "color:#647dee"),
      src = NULL,
      hover_lift = TRUE,
      shadow = TRUE,
      shadow_size = NULL,
      hover_shadow = TRUE,
      border_level = 0,
      icon = argonIcon("atom"),
      status = "primary",
      background_color = NULL,
      gradient = FALSE, 
      floating = FALSE,
      argonRow(
        argonColumn(
          width = 12,
    ),
        argonColumn(width = 12, plotOutput("plot1"))
      )
    ),
    argonCard(
      width = 6,
      title =  h2("Revenue of Top 5 Countries by Month",style = "color:#647dee"),
      src = NULL,
      hover_lift = TRUE,
      shadow = TRUE,
      shadow_size = NULL,
      hover_shadow = TRUE,
      border_level = 0,
      icon = argonIcon("atom"),
      status = "primary",
      background_color = NULL,
      gradient = FALSE, 
      floating = FALSE,
      argonRow(
        argonColumn(
          width = 12,
        ),
        argonColumn(width = 12, plotlyOutput("plot2"))
      )
    ),
    argonCard(
      width = 6,
      title =  h2("Average Order Value by Country'",style = "color:#647dee"),
      src = NULL,
      hover_lift = TRUE,
      shadow = TRUE,
      shadow_size = NULL,
      hover_shadow = TRUE,
      border_level = 0,
      icon = argonIcon("atom"),
      status = "primary",
      background_color = NULL,
      gradient = FALSE, 
      floating = FALSE,
      argonRow(
        argonColumn(
          width = 12,
        ),
        argonColumn(width = 12, plotlyOutput("plot3"))
      )
    ) 
  )
      ),
  argonTab(
    tabName = "VISULIZATION-2",
    active = FALSE,
    argonH1("Monthly and weekly Sales Visulization", display = 4),
    argonRow(
      argonCard(
        width = 6,
        src = NULL,
        icon = icon("cogs"),
        status = "primary",
        shadow = TRUE,
        border_level = 2,
        hover_lift = TRUE,
        hover_shadow = TRUE,
        title =  h2("Revenue By Months",style = "color:#647dee"),
        argonRow(
          argonColumn(
            width = 12
          ),
          argonColumn(width = 12, plotlyOutput("plot4"))
        )
      ),
      br(), br(),
      argonCard(
        width = 6,
        title = h2("Revenue by day of the week",style = "color:#647dee"),
        src = NULL,
        hover_lift = TRUE,
        shadow = TRUE,
        shadow_size = NULL,
        hover_shadow = TRUE,
        border_level = 0,
        icon = argonIcon("atom"),
        status = "primary",
        background_color = NULL,
        gradient = FALSE, 
        floating = FALSE,
        argonRow(
          argonColumn(
            width = 12,
          ),
          argonColumn(width = 12, plotlyOutput("plot5"))
        )
      ),
      argonCard(
        width = 6,
        title = h2("Average Order Value by day of the Week",style = "color:#647dee"),
        src = NULL,
        hover_lift = TRUE,
        shadow = TRUE,
        shadow_size = NULL,
        hover_shadow = TRUE,
        border_level = 0,
        icon = argonIcon("atom"),
        status = "primary",
        background_color = NULL,
        gradient = FALSE, 
        floating = FALSE,
        argonRow(
          argonColumn(
            width = 12,
          ),
          argonColumn(width = 12, plotlyOutput("plot6"))
        )
      ),
      argonCard(
        width = 6,
        title =  h2("Transactions by day of the week",style = "color:#647dee"),
        src = NULL,
        hover_lift = TRUE,
        shadow = TRUE,
        shadow_size = NULL,
        hover_shadow = TRUE,
        border_level = 0,
        icon = argonIcon("atom"),
        status = "primary",
        background_color = NULL,
        gradient = FALSE, 
        floating = FALSE,
        argonRow(
          argonColumn(
            width = 12,
          ),
          argonColumn(width = 12, plotlyOutput("plot7"))
        )
      ) 
    )
  ),
  argonTab(
    tabName = "KW Rank test",
    active = FALSE,
    argonRow(
      argonCard(
        width = 12,
        src = NULL,
        icon = icon("cogs"),
        status = "primary",
        shadow = TRUE,
        border_level = 2,
        hover_lift = TRUE,
        hover_shadow = TRUE,
        h2(span("Kruskal-Wallis rank sum test", style = 'color:#647dee')),
        tags$ul(
          h3("The" ,strong ("Kruskal-Wallis Test ")," A collection of data samples are independent if they come from unrelated populations and the samples do not affect each other. Using the Kruskal-Wallis Test, we can decide whether the population distributions are identical without assuming them to follow the normal distribution.. ", align ="justify"),
          p(""),
          h3("The ",strong("Kruskal Wallis chi-squared")," value reported by the R function is equal to the statistic H that is computed in the test.If there are no ties then .",align ="justify"),
          br(),
          h3("The Kruskal Wallis chi-squared is represented by the expression - "),
          img(src = "https://i.ibb.co/QvjKSTx/formula.png" , height = 100, width = 400),
          br(),
          br(),
          h3("where Ri¯ is the mean of the ranks in the i-th sample and R¯=12(N+1) is the mean of all ranks.",align ="justify"),
          br(),
          h3("It is named like this because the statistic follows approximately a chi squared distribution. Under the hood you can see it as the means Ri¯- R¯ being approximated as normal distributions with variance 1/2(N^2-1).",align ="justify"),
          p(""),
          h3(strong("The p-value:"),"
             For the Kruskal Wallis test the p-value is P(Hif H0 true >= Hobserved), a way to indicate how extreme a particular measurement Hobserved is by stating the probabilty that the value for an experiment when the null hypothesis is true, Hif H0 true, would be equal or higher.
             ",align ="justify"),
          br(),
          h3("If the null hypothesis is false then you will be more likely to get such high/extreme values, thus when you observe an unlikely (ie low p-value) extreme value H this indicates that the null/no-effect hypothesis may be false or at least is not supported by the data." ,align ="justify"),
          br(),
          br(),
          h2(span("Implementing Kruskal Wallis chi-squared for Transction by days of week" , style = "color:#647dee")),
          p(""),
          h3(strong("Problem:"), "Without assuming the data to have normal distribution, test at .05 significance level if the transction in week is an identical data distributions ."),
          p(""),
          img(src = "https://i.ibb.co/JKw6Gr5/formula.png" ,  height = 200, width = 600),
          br(),
          p(""),
          img(src = "https://i.ibb.co/nRWkKRm/wallis-test-1.png" , height = 250, width = 600),
          p(""),
          h3("The null hypothesis is that the weekly transcation are identical populations. To test the hypothesis, we apply the kruskal.test function to compare the independent week transaction data. The p-value turns out to be nearly zero (4.441e-14). Hence we reject the null hypothesis. ."),
          p(""),
          h2(span("weekdaySummary$dayOfWeek,  means of the ranks" , style = "color:#647dee")),
          p(""),
          img(src = "https://i.ibb.co/Tt8pySd/rank.png" , height = 300, width = 600),
          br(),
          br(),
          h2(span("Post Hoc Analysis", style = "color:#647dee")),
          img(src = "https://i.ibb.co/t2q4sZZ/poc.png" , height = 350, width = 700),
          br(),
          h3(strong("Here we get to know, transactions that take place on different days of week, with Sunday having lowest number of transactions comparing to others and Thursday having more number of transactions. ", align ="justify"))),
        argonRow(
          argonColumn(
            width = 12
          ),
          argonColumn(width = 12, plotOutput("plot8"))
        )
      )

    )
  )
  
  
    )
  ),
               
  footer = argonFooter )
