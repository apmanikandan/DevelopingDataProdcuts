library(shiny)
# Define UI for dataset viewer application
shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Weather Forecast"),
                sidebarPanel(
                        textInput('City', "Please provide the City Name and its country code(optional)" , "Beijing,CN"),
                        submitButton('Submit')
                ),
                mainPanel(
                        h4("You searched for:"),
                        verbatimTextOutput("inputValue"),
                        h4('Available results:'),
                        verbatimTextOutput("prediction")
                )
        )
)
