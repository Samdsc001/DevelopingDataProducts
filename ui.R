library(shiny)

# Define UI for miles per gallon application
shinyUI(fluidPage(
  # title
  titlePanel("Miles Per Gallon Analysis"),
  h5('Change the plot by selecting different drop down values and using the check box'),
  
  p('This is a dynamic visual interpretation of the relationship between different variables on the miles per gallon. The variables analyzed are:'),
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