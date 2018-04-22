library(shiny)

shinyUI(fluidPage(
  titlePanel("Visualizing the Poisson Distribution"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("mu",
                  "Expected Value:",
                  min = 1,
                  max = 15,
                  value = 5,
                  step = 0.1
                  )
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
