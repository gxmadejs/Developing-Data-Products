#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  # Application title
  titlePanel("Random Distributions"),
  # Sidebar with input for observations and distribution type.
  sidebarLayout(
    sidebarPanel(
      
      fluidRow(column(8, numericInput("obs","Number of Observations:", min = 10, max = 10000, value = 100))),
      
      fluidRow(column(8, radioButtons("dist", "Distribution type:", 
                                   c("Normal" = "Normal",
                                     "Uniform" = "Uniform",
                                     "Exponential" = "Exponential"
                                     ))))),
    # Show a plot of the generated distribution
    
    mainPanel(h5("Use the controls on the side panel to play with:"), 
              h5("The Number of Observations"),
              h5("The Distribution Type"),
              plotOutput("Plot")
    )
  )	 
)
)
