# -*- coding: utf-8 -*-
"""
Created on Mon Oct  4 23:23:39 2021

@author: Sudharsaan
"""

import pandas as pd 
from bs4 import BeautifulSoup # I don't think I needed this :/ 

cars_table = pd.read_html("https://en.wikipedia.org/wiki/Comma-separated_values") # Reads the html file 
cars_table[1] # Takes the 2nd tabled indexed as 1 from the html file

cars_true_table = cars_table[1] # storing the table I need into another object 'cars_true_table'
cars_true_table.to_csv("scraping_cars_python.csv") # Exporting the table into a csv file. 

# Notice that the indexing is different in python compared to R. In python it indexed the first row as 0 whereas in 
## R it indexed the first row as 1.