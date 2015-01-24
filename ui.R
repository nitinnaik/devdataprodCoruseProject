library(shiny)

# Define UI for miles per gallon application
shinyUI(navbarPage("Motor Trends Cars MPG data analysis",
  tabPanel("Plot",  
  
  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  sidebarPanel(
    selectInput("variable", "Variable:",
                list("Cylinders" = "cyl", 
                     "Transmission" = "am", 
                     "Gears" = "gear")),
    
    checkboxInput("outliers", "Show outliers", FALSE)
  ),
  
  # Show the caption and plot of the requested variable against mpg
  mainPanel(
    h3(textOutput("header")),
    
    h3(textOutput("caption")),
    
    plotOutput("mpgPlot")
  )
 ),
 tabPanel("Help",
          mainPanel(
            includeMarkdown("help.md")
          )
 )
 
))