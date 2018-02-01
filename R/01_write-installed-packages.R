## deja vu from yesterday!

## create a data frame of your installed packages
library(data.table)
my_packages <- data.table(installed.packages())

## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built
my_packages_subset <- my_packages[, .(Package, LibPath, Version, Priority, Built)]

## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like
write.csv(my_packages_subset, '../data/installed-packages.csv',row.names = FALSE)

## when this script works, stage & commit it and the csv file
## PUSH!
