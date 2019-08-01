
library(shiny)


shinyServer(function(input, output) {

    output$ingredients <- renderTable({
        
       banana <- input$bananas
        
        ingredients <- c("VegetableOil", 
                         "BrownSugar", 
                         "Flour", 
                         "BakingPowder", 
                         "ChocolateChips")
        
        amount <- c(75, 
                    100, 
                    225, 
                    6, 
                    75)
        if (input$radio_units=="retard"){
            amount <- c(0.36,
                        0.5,
                        1.8,
                        0.03,
                        0.42)
        }
        amount <- round((amount / 3)*banana,2)
        
        unit <- c("gram", "gram", "gram", "gram", "gram")
        if (input$radio_units=="retard"){
            unit <- c("cups","cups","cups","cups","cups")
        }
        
        ingr <- data.frame(ingredients, amount, unit)
    })
    
    output$text1 <- renderText({
        "Additionally to your bananas you'll need the following ingredients. 
        Note that your choosing of the unit provides the units of the ingredients."
    })
    
    output$text2 <- renderText({
        "Preheat your oven to 180C/355F."
    })
    
        
    output$text3 <- renderText({
        "Mash the bananas and mix the with the oil and the brown sugar. Stir well."
    })
    
    output$text4 <- renderText({
        "Add the flour, the baking powder and the chocolate chips."
    })
    
    output$text5 <- renderText({
       "Bake in a greased form (whatever you like, make sure there's enough space for the mixture to rise)
        for about 30-40 Minutes (a skewer should come out clean)." 
    })
        

})
