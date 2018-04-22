library(shiny)
library(ggplot2)
shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    x <- 0:25
    probs <- dpois(x, lambda = input$mu)
    qplot(x, probs, geom = c("point", "line"), ylim = c(0, 0.4),
          ylab = "P(X = x)") + theme_minimal()
  })
})
