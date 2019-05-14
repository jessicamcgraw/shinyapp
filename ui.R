library(shiny)
library(optiRum)
library(shinythemes)

# Define UI for application and create page title
shinyUI(fluidPage(
        theme = shinytheme("superhero"),
        tags$head(
                tags$style(
                        ".title {margin: auto; width: 600px; font-size:  40px}"
                )
        ),
        br(),
        tags$div(class="title", titlePanel("How Much Will My Mortgage Payment Be?")),
 
  br(),
  br(),
  # Sidebar for inputs
  sidebarLayout(
    sidebarPanel(
        h3("Move the Sliders to Select Numbers"),
        br(),
        sliderInput("slider1", "Total Amount of Loan", 0, 500000, 0),
        br(),
        sliderInput("slider2", "Length of Loan in Years", 0, 30, 0),
        br(),
        sliderInput("slider3", "Annual Interest Rate", 0, .10, 0),
        br(),
        submitButton("Calculate Payment")
        ),
    
    # Show calculation of inputs
    mainPanel(
        br(),
        br(),
     h2("Monthly Payment Amount Is:", align = "center"),
     br(),
     br(),
     textOutput("text1")
     
  ))
))
