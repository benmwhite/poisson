library(shiny)
library(ggplot2)
shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    x <- 0:30
    probs <- dpois(x, lambda = input$mu)
    qplot(x, probs, geom = c("point", "line"), ylim = c(0, 1),
          ylab = "p(x)") + theme_bw()
  })
})
