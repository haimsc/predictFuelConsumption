

shinyServer(function(input, output, session) {
    data(mtcars)
    fit <- lm(mpg ~ am + cyl + wt + carb, data=mtcars)
    inp <- reactive({
        data.frame(am=as.numeric(!input$am), cyl=input$cyl, carb=input$carb, wt=input$wt)
    })
    output$mpg <- renderText(predict(fit, inp()))
    output$transmission <- renderText(ifelse(input$am, "Automatic transmission", "Manual transmission"))
    output$weight <- renderText(paste("Weight: ", input$wt, " lb/1000"))
    output$ncyl <- renderText(paste(input$cyl, " Cylinders"))
    output$ncarb <- renderText(paste(input$carb, " Carburetors"))

})
