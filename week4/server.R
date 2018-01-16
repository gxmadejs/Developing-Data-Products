#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
shinyServer(function(input, output) {
  
  output$Plot <- renderPlot({
    
    dist <- switch(input$dist,
                   Normal = rnorm,
                   Uniform = runif,
                   Exponential = rexp,
                   )
    
    hist(dist(input$obs), col = 139,
         main = paste("Histogram of a" , input$dist, "Distribution with ", input$obs, " Observations"), xlab = "")
  })
}
)
