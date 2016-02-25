library(shiny)
library(datasets)

dat <- mtcars
fit <- lm(mpg ~ cyl, data = dat)

pred <- function(c){
     as.numeric(predict(fit,data.frame(cyl=c)))   
}

# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {
     output$inputValue <- renderPrint({input$cyl})
     output$prediction <- renderPrint({pred(as.numeric(as.character(input$cyl)))})
})