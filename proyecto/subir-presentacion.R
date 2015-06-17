library(slidify)
setwd("/Users/pacha/Documents/Coursera/tareas y controles/Developing Data Products/proyecto/elder-population-chile/slidify")
slidify("index.Rmd")
publish(title = 'elder-population-in-chile', 'index.html', host = 'rpubs')