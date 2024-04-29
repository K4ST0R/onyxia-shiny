library(shiny)
function(input, output, session) {
  output$output2 <- renderText({
    paste("You've selected", input$espece)
  })
  
}