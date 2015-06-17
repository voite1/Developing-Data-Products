# server.R

library(rCharts)

demografia <- read.csv('instancia.csv')

options(RCHART_WIDTH = 500)

shinyServer(function(input, output) {
  output$lexplot <- renderChart2({
    selected <- input$Age
    Age <- subset(demografia, Age == selected & Year %in% seq(input$range[1], input$range[2], 1))
    grafico <- hPlot(
      x = "Year", 
      y = "People", 
      group = "Gender", 
      data = Age, 
      type = "spline")
    
    grafico$yAxis(title = list(enabled = TRUE, text = 'Population count'), 
                      labels = list(rotation = -0, align = 'right'), 
                      replace = T)
    grafico$xAxis(title = list(enabled = TRUE, text = 'Year'), labels = list(rotation = -30, align = 'right'), replace = T)
    grafico$exporting(enabled = T)
    return(grafico)
  })
})