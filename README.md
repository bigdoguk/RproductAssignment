
## carApp---a shiny application

### Introduction
This simple shiny application investigates the relation of "mpg" (miles per gallon) with other car attributes (i.e., gear, weight (wt), cylinder (cyl), horse power (hp), and time of 1/4 mile (qsec)) in the R build-in mtcars dataset. R plot function is employed for the data analysis task. 

### Usages

There are two options for running this shiny application. 

#### run carApp online as a webpage
Open the link https://bigdoguk.shinyapps.io/carApp/ to play carApp. 

#### run carApp locally on your own machine
1. Download the folder "carApp" to your local computer. Or, if you have problem in downloading a folder from github, you can instead download the two files "ui.R" and "server.R", and save them in a folder call "carApp" (or any other name you like) locally. Note that simply right click the file and click "save as" will not work, as the file will be changed to HTML format (tested in a windows 7 machine). 
2. Make sure that R has been installed in your computer, and the folder "carApp" is in your current R working directory. For example, suppose that you current R working directory is "C:\\R", then "carApp" folder should be in the "R" directory, like "C:\\R\\carApp".  Of course, you can store the folder "carApp" anywhere, but you then need to specify the full path to it when running the app. 
3. In R console, run "runApp("carApp")", you shold be able to see this shiny app in your web browser. 
4. Choose a car attribute by clicking 1 of the 5 radio button from the sidebar, and drag the slider to set the number of observations in mtcars to display. 
5. Accordingly, in the main panel, the text of your selected attribute, a plot of mpg and the selected attribute, and a table for the selected observations will be automatically displayed. 

### Source code
Please refer to the ui.R and server.R files for the source code and detailed code coments. 
