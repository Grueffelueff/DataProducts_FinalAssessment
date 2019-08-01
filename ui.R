
library(shiny)

#https://grueffelueff.shinyapps.io/converter/

shinyUI(fluidPage(

    titlePanel("Make some Banana Bread - Everyone will be happy"),
    h5("Banana bread is really easy to make and it takes just a few minutes to prep with ingredients that you probably have at hand."),

    sidebarLayout(
        sidebarPanel(
            
            helpText("Choose your unit options and how many bananas you have at hand"),
            
            radio_units <- radioButtons(
                "radio_units",
                "Units",
                c("normal" ="norm",
                  "retarded (Sorry Americans)" ="retard")
            ),
            
            sliderInput(inputId = "bananas",
                        "Number of bananas",
                        min = 0,
                        max = 10,
                        value = 3)
            
        ),
        
        mainPanel(
            textOutput(outputId = "text1"),
            tableOutput(outputId = "ingredients"),
            textOutput(outputId = "text2"),
            textOutput(outputId = "text3"),
            textOutput(outputId = "text4"),
            textOutput(outputId = "text5")
        )
    ),
    
    h5("This is a very basic recipe. 
       You can vary it however you like. 
       You could for instance leave out the chocolate chips and use some blueberries and almonds instead, or spice up the bread with some cinnamon and nutmeg. There are really no boundaries to your imagination.")

    )
)

