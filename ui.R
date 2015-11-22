library(shiny)

# Define UI for miles per gallon application
shinyUI(fluidPage(
  # title
  titlePanel("Miles Per Gallon"),
  h5('Tweek the Plot by changing the drop down values'),
  
  p('The plot shows the impact of different variable on the miles per gallon. The variables analyzed are:'),
  p('
    1) Cylinders
    2) Automatic vs. Manual
    3) Number of Gears'),
  
  sidebarLayout(
    sidebarPanel(
      
      selectInput("variable", "Select the Variables to Plot:",
                  c("Cylinders" = "cyl",
                    "Transmission" = "am",
                    "Gears" = "gear")),
      
      checkboxInput("outliers", "Show outliers", FALSE)
    ),
    
     # mpg
    mainPanel(
      h3(textOutput("caption")),
      
      plotOutput("mpgPlot")
    )
  )
))