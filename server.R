BMI<-function(wght,hght) {
  if (wght==0 | hght==0) return(NA) 
  else  return(round(hght/(wght/100)^2,1))
}

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$height})
    output$inputValue2 <- renderPrint({input$weight})
    output$prediction <- renderPrint({BMI(input$height,input$weight)})
  }
  )