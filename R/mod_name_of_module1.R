#' name_of_module1 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_name_of_module1_ui <- function(id){
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
    
#' name_of_module1 Server Function
#'
#' @noRd 
mod_name_of_module1_server <- function(input, output, session){
  ns <- session$ns
  
  observeEvent( input$validate , {
    print(input$choice)
  })
  
}
    
## To be copied in the UI
# mod_name_of_module1_ui("name_of_module1_ui_1")
    
## To be copied in the server
# callModule(mod_name_of_module1_server, "name_of_module1_ui_1")
 
