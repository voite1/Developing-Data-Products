setwd("/Users/pacha/Documents/Coursera/tareas y controles/Developing Data Products/quiz 1")

library(manipulate)
library(rCharts)
library(shiny)


# question 1

myPlot <- function(s) {
  plot(cars$dist - mean(cars$dist), cars$speed - mean(cars$speed))
  abline(0, s)
}

manipulate(myPlot(s), s = slider(0, 2, step = 0.1))

# question 2

dTable(airquality, sPaginationType = "full_numbers") 

# question 4

shinyUI(pageWithSidebar(
  headerPanel("Data science FTW!"),
  sidebarPanel(
    h2('Big text'),#comma needed here
    h3('Sidebar')
  ),
  mainPanel(
    h3('Main Panel text')
  )
))

# question 5

runApp("app-quiz-1")

