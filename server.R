library(ISLR)
data(Wage)

shinyServer(
        function(input, output) {
                
                output$summary <- renderPrint({summary(Wage[Wage$year == input$year 
                                                            & Wage$jobclass == input$jobclass
                                                            & Wage$education == input$education,]$wage)})
                
                
                output$test <- renderPlot({
                        input$plot
                        hist(Wage[Wage$year == input$year 
                                  & Wage$jobclass == input$jobclass 
                                  & Wage$education == input$education,]$wage,  
                             xlab ='wage', col='lightblue',main='Wage')})
                
        }
)