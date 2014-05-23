## A README file for the accelerometer project

This file contains the following information on the accelerometer project:

* Source data
* Extracting tidy data
* Naming conventions

### Source data

The source data for the project was downloaded within the R framework with the following commands:

```sh
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file( fileURL, "./dataset.zip", mode = "wb")
```
It was then unzipped.

### Extracting tidy data

The R function 'RunAnalysis' contained in the 'run_analysis.R' file extracts a tidy data set from the
above mentioned source data. The tidy data set has the following attributes

* It contains information on 79 acceleromter measurements related to mean and standard deviation
* The measurements related to mean and standard deviation were selected on the basis of original variable names containing the character strings "mean" or "std"
* The data was collected over 30 subjects undergoing 6 activities
* The mean measurement for each subject / activity combination is reported
* Details of the measurements are provided in the CodeBook.md

To extract the tidy data set within R, the 'run_analysis.R' file needs to be sourced from this repo and executed as follows.

```sh
source("run_analysis.R")
tidyData <- RunAnalysis()
```

The above command assumes that the working directory is set contains the unzipped data along with the file 'run_analysis'.

### Naming conventions

The tidy data set renames variables from the original data set. This renaming follows 'camelCase' for variables as recommended 
in the Google R style apporach. Please refer to CodeBook.md for more information on variables.