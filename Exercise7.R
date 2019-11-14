#Xiaoxiang FENG Exercise7

#Question 1 
#function to return the odd rows of any dataframe passed as an argument
oddrows <- function(dateframe){
  oddN <- seq(1,nrow(dateframe),2)
  dat1 <- dat[oddN, ]
  return(dat1)
}

#Question 2
#load data in iris.csv
dat <- data.frame(read.csv(file='iris.csv'))

#function to return the numbers of observations of a given species
observations_of_given_species <- function(species){
  obser <- length(which(dat$Species==species))
  return(obser)
}

#function to return data with Sepal.width greater than a specified value
Sepal <- function(width){
  RowN <- dat[which(dat[ ,2]> width), ]
  return(RowN)
}


#write data for a given species to a csv file with the given species
#name as the file name
species_sort <- function(species){
  content <- dat[which(dat$Species == species), ]
  file_name <- paste(species,'.csv')
  write.table(content, file_name, sep=',')
}
