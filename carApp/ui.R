library(shiny)

# Define UI for application that displays the plots and observations of mtcars dataset
shinyUI(fluidPage(

  # Application title
  titlePanel("CAR info plot"),

  # Sidebar with a helpText (to describe the main task), 
  # radioButton (to display car attributes), 
  # and slider (to set number of observfation to display).
  sidebarLayout(
    sidebarPanel(
	  helpText("Create scatter plots to investigate the relation between \"mpg\" (miles per gallon) attribute and other car attributes
        from R build-in dataset mtcars."),
	
	  radioButtons("attribute", label = h3("Choose a car attributes:"),
      #  choices = list("cylinder" = 1, "horse power" = 2,
       #                "weight" = 3, "gear" = 4, "time of 1/4 mile"),selected = 1),
	   choices = list("cylinder (cyl)", "horse power (hp)",
                      "weight (wt)", "gear" , "time of 1/4 mile (qsec)"),selected = "cylinder (cyl)"),
      sliderInput("rows",
                  "Choose number of rows to display:",
                  min = 1,
                  max = 32,
                  value = 10)
    ),

    # Show text of the selected car arribute, 
	# plots for different mtcars attributes, 
	# and table for requested observations
    mainPanel(
	 textOutput("text1"),
      plotOutput("xyplot"),
	  tableOutput("observation")
    )
  )
))
