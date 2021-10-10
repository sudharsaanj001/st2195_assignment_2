library("rvest")
# We require the rvest library to perform multiple functions below. I ain't exactly sure of which functions though.

wikiurl <- "https://en.wikipedia.org/wiki/Comma-separated_values"
# storing a wikipedia link of comma separated values into the "wikiurl" object.

cartablewiki <- wikiurl %>%
  read_html() %>%
  html_nodes(xpath = '//*[@id="mw-content-text"]/div[1]/table[2]') %>%
  html_table()
# We are performing multiple functions & storing the end result into an object called "cartablewiki"
# Firstly we place the wikiurl object into the function read_html which reads the html file. This reads the wikipedia 
## page as a html file. Then we use the html_nodes function to extract the table using the xpath argument. 
# This can be done by highlighting an element in the table, right clicking it, then clicking inspect. 
# The specific element highlighted in the table will be highlighted in the html file. From there search for the table &
## specifically search for smth in the lines of table class. Copy that line of code as Xpath & paste it within the 
### single quotation marks of the xpath argument. Then we use the html_table function do parse a html table into a data frame. 
# The end result of these functions being a data frame is then stored in the "cartablewiki" object. 

cartablewiki
getwd()
write.csv(cartablewiki, file = "scraping_cars_r.csv")
read.csv("scraping_cars_r.csv")
# We can use the write.csv function to write the data frame as a csv file with the specified file name to be given to it. 
# read.csv is used to check the state of the file in the console pane of RStudio. 