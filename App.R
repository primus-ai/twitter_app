library(shiny)
library(semantic.dashboard)
library(bslib)
library(htmltools)


# Call scripts

dbHeader <- dashboardHeader(inverted = T,
                            color = "black",
                            title = tags$img(src = "logo-primus.png",
                                             height = "60px",
                                             #width = "100px",
                                             style = "padding-bottom:10px; padding-top:0px; padding-right:10px;"),
                            titleWidth = 200
)

sidebar <- dashboardSidebar(
    sidebarMenu(
        
    )
)

dbBody <- dashboardBody(
    
    
)


ui <- dashboardPage(theme = "cyborg",
                    dbHeader,
                    sidebar,
                    dbBody,
)


server <- function(input, output) {
    
   
}

shinyApp(ui, server)