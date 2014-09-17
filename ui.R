library(shiny)

shinyUI(fluidPage(
  titlePanel("Visualizing the Poisson Distribution"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("mu",
                  "Expected Value:",
                  min = 0.01,
                  max = 20,
                  value = 5,
                  step = 0.01
                  )
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
