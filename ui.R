shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("IMC evaluation"),
        sidebarPanel(
            numericInput('Weight', 'kg', 70, min = 40, max = 100, step = .5),
            numericInput('Height', 'cm', 175, min = 120, max = 100, step = 1),
            
            wellPanel(
                selectInput(inputId = "Sex",label = "Sex:", 
                            choices = c("Male",
                                        "Female"),
                            selected = "Male")
            ),
            submitButton('Submit')
            
        ),
        mainPanel(
            h3('Results of prediction'),
            h4('You entered'),
            verbatimTextOutput("Weight"),
            verbatimTextOutput("Height"),
            verbatimTextOutput("Sex"),
            h4('Which resulted in a IMC of '),
            verbatimTextOutput("IMC"),
            h4('The subject is '),
            verbatimTextOutput("Overweight")
            
        )
    )
)