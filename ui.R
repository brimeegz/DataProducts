library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
     
     # Application title
     headerPanel("Predicted MPG"),
     
     # Sidebar with control to select the number of cylinders and the predicted mpg
     sidebarPanel(
          radioButtons("cyl","Cylinders",list(4,6,8), selected = 4),
          h3("Documentation"),
          p("This is a calculator that can be used to find the predicted MPG based upon the number of cylinders.  To update the calculation, select the radio button corresponding with the desired number of cylinders.  The prediction is based upon a linear regression of mpg on the number of cylinders in the mtcars data set.")
     ),
     
     # Show the predicted mpg
     mainPanel(
          h3('Results'),
          h4('You entered'),
          verbatimTextOutput("inputValue"),
          h4('And the predicted MPG is '),
          verbatimTextOutput("prediction")
     )
))