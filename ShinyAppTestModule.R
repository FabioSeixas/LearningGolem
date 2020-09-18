# Re-usable module
mod_ui <- function(id) {
  ns <- NS(id)
  tagList(
    sliderInput(
      inputId = ns("choice"), 
      label = "Choice",
      min = 1, max = 10, value = 5
    ),
    actionButton(
      inputId = ns("validate"),
      label = "Validate Choice"
    )
  )
}

mod_server <- function(input, output, session) {
  ns <- session$ns
  
  observeEvent( input$validate , {
    print(input$choice)
  })
  
}

# Main application
library(shiny)
app_ui <- function() {
  fluidPage(
    mod_ui(id = "mod_ui_1"),
    mod_ui(id = "mod_ui_2")
  )
}

app_server <- function(input, output, session) {
  callModule(mod_server, id = "mod_ui_1")
  callModule(mod_server, id = "mod_ui_2")
}

shinyApp(app_ui, app_server)