
library(shiny)

shinyServer(function(input, output) {
    data("iris")

    fit <- reactive({ lm(iris[,which(names(iris)==input$y)]~iris[,which(names(iris)==input$x)]) })
    output$plot1 <- renderPlot({
        
        # Plot
        plot(x = iris[,which(names(iris)==input$x)],y = iris[,which(names(iris)==input$y)], pch = 19, xlab = input$x, ylab = input$y, col = iris$Species)
        abline(fit())
        legend("topright",legend = c("setosa","versicolor","virginica"),col=c("black", "red","green"),  pch = 19, cex=0.8)
    })
    
})
