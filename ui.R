
library(shiny)

shinyUI(fluidPage(
    
    titlePanel("Plotting Iris"),

    sidebarLayout(
        sidebarPanel(
            p("Choose the x and y axis for the plot:"),
            selectInput("x", "X Axis:",
                        c("Sepal Length" = "Sepal.Length",
                          "Sepal Width" = "Sepal.Width",
                          "Petal Length" = "Petal.Length",
                          "Petal Width" = "Petal.Width"),
                        selected = "Sepal.Length"),
            selectInput("y", "Y Axis:",
                        c("Sepal Length" = "Sepal.Length",
                          "Sepal Width" = "Sepal.Width",
                          "Petal Length" = "Petal.Length",
                          "Petal Width" = "Petal.Width"),
                        selected = "Sepal.Width")
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            p("Here you can see the plot and a reactive linear fit for the data:"),
            plotOutput("plot1")
        )
    )
))
