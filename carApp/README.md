
carApp---a shiny application

Introduction
This simple shiny application investigates the relation of "mpg" (miles per gallon) with other car attributes (i.e., gear, weight (wt), cylinder (cyl), horse power (hp), and time of 1/4 mile (qsec)) in the R build-in mtcars dataset. R plot function is employed for the data analysis task. 

Usage
1. Download the folder "carApp" to your local computer
2. Make sure that R has been installed in your computer, and the folder "carApp" is in your current R working directory. For example, suppose that you current R working directory is "C:\\R", then "carApp" folder should be in the "R" directory, like "C:\\R\\carApp". 
3. In R console, run "runApp("carApp")", you shold be able to see this shiny app in your web browser. 
4. Choose a car attribute by clicking 1 of the 5 radio button from the sidebar, and drag the slider to set the number of observations in mtcars to display. 
5. Accordingly, in the main panel, the text of your selected attribute, a plot of mpg and the selected attribute, and a table for the selected observations will be automatically displayed. 

Source code
Please refer to the ui.R and server.R files for the source code and detailed code coments. 