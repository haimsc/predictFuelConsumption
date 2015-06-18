
shinyUI(pageWithSidebar(
    headerPanel('Predict Fuel Consumption'),
    sidebarPanel(
        checkboxInput('am', 'Automatic', FALSE),
        numericInput('cyl', 'Number of Cylinders', 4,
                     min = 4, max = 8, step = 2),
        numericInput('carb', 'Number of Carburetors', 1,
                     min = 1, max = 8),
        sliderInput('wt', 'Weight (lb/1000)', 3.5,
                     min = 1, max = 8, step=0.1)
    ),
    mainPanel(
        tabsetPanel(
            tabPanel("Main", h2("For the given car details:"),
                     h4(textOutput("transmission")),
                     h4(textOutput("ncyl")),
                     h4(textOutput("ncarb")),
                     h4(textOutput("weight")),
                     h2("Predicted Miles per Galon:"),
                     h1(textOutput("mpg"), style = "color:blue")
            ), 
            tabPanel("User Guide", 
                     h4("Use this application to predict the fuel consumption of a car."),
                     h4("Check the box for automatic / manual transmission"),
                     h4("Select the number of cylinders, the number of carburetors, and the weight in lb/1000."),
                     h4("The predicted fuel consumption is displayed in blue.")
            )
        )
    )
    
))
