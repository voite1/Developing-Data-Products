# ui.R

library(rCharts)

demografia <- read.csv('instancia.csv')

# Define UI 
shinyUI(fluidPage(
  # Title
  titlePanel("Elder Population (64+ years) Count in Chile (1992-2006)"),
  p("According to several studies in Chile we have an aging population and this means to change Public Policy guidelines. In 1995 we had 36 millions of elders in Latin America and by 2025 we will have 72+ millions of elders."),
  p("Therefore, it would be interesting to visualize how our elder population is aging. In the pot we can observe that as years are passing, we have more and more 70+ years elders."),
  p("The plot shows the elder population (64+ years) classified by age and as females and males (I also show the total population count) from 1992 to 2006."), 
  p(" "),
  em("A good short article about aging population in Chile and Latin America is found in ", a("http://www.gerontologia.uchile.cl/docs/chien3.htm", href="http://www.gerontologia.uchile.cl/docs/chien3.htm")),
  p(" "),
  em("The data was obtained from the Human Mortality Database:", a("http://www.mortality.org/cgi-bin/hmd/country.php?cntr=CHL&level=1", href="http://www.mortality.org/cgi-bin/hmd/country.php?cntr=CHL&level=1")),
  p(" "),
  
  # Sidebar 
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "Age", 
                  label = "Select an age to display the number of elders of that age:", 
                  choices = c("64",
                              "65",
                              "66",
                              "67",
                              "68",
                              "69",
                              "70",
                              "71",
                              "72",
                              "73",
                              "74",
                              "75",
                              "76",
                              "77",
                              "78",
                              "79",
                              "80",
                              "81",
                              "82",
                              "83",
                              "84",
                              "85",
                              "86",
                              "87",
                              "88",
                              "89",
                              "90",
                              "91",
                              "92",
                              "93",
                              "94",
                              "95",
                              "96",
                              "97",
                              "98",
                              "99",
                              "100",
                              "101",
                              "102",
                              "103",
                              "104",
                              "105",
                              "106",
                              "107",
                              "108",
                              "109",
                              "110+"), 
                  selected = "64"), 
      sliderInput("range",
                  label = "Time period to display:",
                  min = 1992,
                  max = 2006,
                  value = c(1992, 2006), 
                  format = "0000"), 
      helpText(p("Move the scroll bar to adjust the period of time displayed."), p("Plot Created on 21 Feb 2015 by Pachamaltese"), img(src="https://raw.githubusercontent.com/pachamaltese/Developing-Data-Products/master/proyecto/logo.jpg"), p("This plot was created for JHU's Developing Data Products MOOC."))
    ),
    
    # Show the plot 
    mainPanel(
    strong("Give the plot a little time to load (the dataset is not small). The chart can be downloaded as PNG, PDF or SVG using the upper right icon in the plot. You can also show/hide series by clicking them below the plot."),
    showOutput("lexplot", "highcharts")
    )
  )
))