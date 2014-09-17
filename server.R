library(shiny)
library(ggplot2)
shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    x <- 1:25
    probs <- dpois(x, lambda = input$mu)
    qplot(x, probs, geom = c("point", "line"), ylim = c(0, 0.4),
          ylab = "p(x)") + theme_bw()
  })
})
