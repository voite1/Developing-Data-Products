#install.packages("BH")

library(shinyapps)
library(BH)

shinyapps::setAccountInfo(name='pachamaltese',
                          token='TOKEN',
                          secret='SECRET')

shinyapps::deployApp('/Users/pacha/Documents/Coursera/tareas y controles/Developing Data Products/proyecto/elder-population-chile')