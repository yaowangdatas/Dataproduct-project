library(shiny)

shinyUI(pageWithSidebar(
        headerPanel("Mid-Atlantic Wage Data Analysis"),
        sidebarPanel(
                h3("Components:"),
                p("Chose components to get the coresponding summary of wage."),
                selectInput("year", h5("Year"), c("2003" = 2003, "2004" = 2004,
                                               "2005" = 2005, "2006" = 2006, 
                                               "2007" = 2007, "2008" = 2008, 
                                               "2009" = 2009), selected = 2003),
                checkboxGroupInput("jobclass", h5("Job Class"),
                            c("Industrial" = "1. Industrial",
                              "Information" = "2. Information"),
                            selected = "1. Industrial"),
                                           
                checkboxGroupInput("education", h5("Education"),
                                   c("Less than High School Grad" = "1. < HS Grad",
                                     "High School Grad" = "2. HS Grad",
                                     "Some College" = "3. Some College",
                                     "College Grad" = "4. College Grad",
                                     "Advanced Degree" = "5. Advanced Degree"),
                                   selected = "1. < HS Grad"),
                submitButton('Submit')               
                ),                                               
        mainPanel(
                h3("Documentation"),
                p("This data is from ISLR package Wage dataset. Wage dataset 
                  are records of wage and other data for a group of 3000 
                  workers in the Mid-Atlantic region from 2003 to 2009."),
                p("In this application, you can get the summary of wage 
                  corresponding to different year, jobclass and education."),
                h3("Summary"),
                verbatimTextOutput("summary"),
                plotOutput('test'),
                h3("Source"),
                p("Data was manually assembled by Steve Miller, of Open BI 
                  (www.openbi.com), from the March 2011 Supplement to Current 
                  Population Survey data.                  
                  http://thedataweb.rm.census.gov/TheDataWeb"),
                h3("Reference"),
                p("Games, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) 
                  An Introduction to Statistical Learning with applications in R, 
                  www.StatLearning.com, Springer-Verlag, New York")
                
        )
))
