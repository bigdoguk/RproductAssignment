

library(shiny)
library(datasets)

# Define server logic required to plot and view the selected
# dataset mtcars
shinyServer(function(input, output) {
  
  # Return the requested car attribute (column in mtcars dataset)
  attributeInput <- reactive({
    switch(input$attribute,
           "cylinder (cyl)" = mtcars$cyl,
           "horse power (hp)" = mtcars$hp,
           "weight (wt)" = mtcars$wt,
		   "gear" = mtcars$gear,
		   "time of 1/4 mile (qsec)" = mtcars$qsec)
  })
  # display the text about the selected attribute
    output$text1 <- renderText({ 
	 
      paste("You have selected the car attribute: ", input$attribute)
    })
  
  # Generate a plot between mpg and other selected attributes
  output$xyplot <- renderPlot({
       att<-attributeInput()
    plot(att,mtcars$mpg, xlab=input$attribute, ylab="miles per gallon (mpg)")
  })
  
  # Show the first "n" observations of the dataset
  output$observation <- renderTable({
    head(mtcars, input$rows)
  })
})

