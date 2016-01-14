library(shiny)

shinyUI(fluidPage(
  uiOutput("style"),
  titlePanel("Border Width and Border Radius"),
  sidebarLayout(
    sidebarPanel(
      fluidRow(column(width = 12, sliderInput(inputId = "borderwidth",label = "Border Width",min = 0, max = 30, value = 5))),
      fluidRow(
        column(width = 6, h4("Top Left"),
               sliderInput(inputId = "TL1",label = "First value",min = 0, max = 230, value = 5),
               sliderInput(inputId = "TL2",label = "Second value",min = 0, max = 230, value = 5)),
        column(width = 6, h4("Top Right"),
               sliderInput(inputId = "TR1",label = "First value",min = 0, max = 230, value = 5),
               sliderInput(inputId = "TR2",label = "Second value",min = 0, max = 230, value = 5))
      ),
      fluidRow(
        column(width = 6, h4("Bottom Left"),
               sliderInput(inputId = "BL1",label = "First value",min = 0, max = 230, value = 5),
               sliderInput(inputId = "BL2",label = "Second value",min = 0, max = 230, value = 5)),
        column(width = 6, h4("Bottom Right"),
               sliderInput(inputId = "BR1",label = "First value",min = 0, max = 230, value = 5),
               sliderInput(inputId = "BR2",label = "Second value",min = 0, max = 230, value = 5))
      )
    ),
    mainPanel(
      fluidRow(
        column(
          width=12, 
          
          
          ("The border-radius attribute in CSS3 can be a little confusing."),br(),
          ("How do you get your boxes to have the kind of rounded corners you really want?"),br(),
          ("Use the sliders on the left to adjust the borders until they look right."),br(),
          ("Then you can do one of two things to add those kinds of borders to your shiny app."),br(),
          ("You can take the text inside the curly brackets below and set it as the value of a style parameter in a shiny tag."),br(),
          ("Alternatively, you can add the whole text below as a style tag at the beginning of your app, right after fluidPage or whatever."),br(),
          ("In this app, I have a reactive expression in server.R to build the text in a variable called style."),br(),
          ("Also in server.R, I have output$style = renderUI({tagList(list(tags$head(tags$style(HTML(style())))))})"),br(),
          ("Then, at the beginning of ui.R (after fluidPage), I have uiOutput('style')"))),
    fluidRow(column(width = 12, h4(textOutput("code")))),
    fluidRow(column(width = 12,
                    div(
                      style = "background-color: #AAAAFF;",
                      fluidRow(
                        column(width = 6, div(h1(style = "background-color: #FFAAAA;", "This is the first box"))),
                        column(width = 6, div(h1(style = "background-color: #FFAAFF;","This is the second box",tags$br())))),
                      fluidRow(
                        column(width = 6, div(h1(style = "background-color: #FFFFAA;","This is the fourth box",tags$br(),tags$br()))),
                        column(width = 6, div(h1(style = "background-color: #AAFFAA;","This is the third box",tags$br(),tags$br(),tags$br()))))
                    ))))
)


))
