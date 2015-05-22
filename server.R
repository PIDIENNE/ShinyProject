IMC <- function(Weight, Height) Weight/(Height/100)^2
    

Overweight <- function(IMC, Sex) {
    if (Sex=="Male") {
       if (IMC > 22)
                " overweight"
           else
                " not overweight"
        }
        else {
        if (IMC > 20) 
                 " overweight"
            else
                " not overweight"
        
        }
}

shinyServer(
    function(input, output) {
        output$Weight <- renderPrint({input$Weight})
        output$Height <- renderPrint({input$Height})
        output$Sex <- renderPrint({input$Sex})
        
        output$IMC <- renderPrint({IMC(input$Weight, input$Height)})
        output$Overweight <- renderPrint({Overweight(IMC(input$Weight, input$Height), input$Sex )})
        
    }
)