library(shiny)
library(optiRum)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
        
        output$text1 = renderText({
                  paste("$", -(mortgagePmt <- PMT(rate = (input$slider3)/12, nper = (input$slider2)*12, 
                                   pv = (input$slider1))))
               
                })  
        
})
