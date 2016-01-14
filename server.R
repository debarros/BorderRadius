

library(shiny)

shinyServer(function(input, output) {

output$style = renderUI({tagList(list(tags$head(tags$style(HTML(style())))))})

style = reactive({paste0("div > h1{border: ",input$borderwidth,"px solid blue; ",
               "border-radius: ",paste0(c(input$TL1,input$TR1, input$BR1, input$BL1),"px", collapse = " ")," / ",
               paste0(c(input$TL2,input$TR2, input$BR2, input$BL2),"px", collapse = " "),";}")})

output$code = renderText({style()})

})

