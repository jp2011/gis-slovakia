# gis-slovakia
Miscellaneous scripts for analysing geo-referenced data with focus on Slovakia.



# Spatial analysis in R

## Software Requirements

1. [R interpreter](https://www.r-project.org/).
2. R libraries that are used for spatial analysis. Although, the `sp` package has been the library of choice. Some of the contributors to `sp` got together and proposed a new library called `sf`, short for 'spatial features'. This guide will use the `sf` library as at the heart of it is the concept of a data frame with which most of you are familiar with. The idea is that each record in the data frame will have a geometry component associated with it. All the operations you do with data frames work with `sf` packages. For more information, guides, and many other things, please refer to this [repository](https://github.com/r-spatial/sf/). I personally find this [cheatsheet](https://github.com/rstudio/cheatsheets/blob/master/sf.pdf) very helpful.



