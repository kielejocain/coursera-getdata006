"Getting and Cleaning Data" Course Project
==========================================

Description
-----------

This project is my solution to the Course Project for Coursera's "Getting and Cleaning Data" course.

* This `README.md` file is a general description of the contents.
* The `CODEBOOK.md` file is a description of the data culled and collated into the `tidy_data.txt` file, which is the output of the `run_analysis.R` file if sourced into R.
* All remaining files are the data, as originally formatted and structured, from the following [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

Use
---

If one were to clone this repository, delete the `tidy_data.txt` file, open R Studio, set the working directory to the repo, and source `run_analysis.R`, they would find a fresh copy of `tidy_data.txt` in the working directory.

Method
------

1. In an attempt to follow the steps given in the assignment, the `run_analysis.R` file first loads the data from both the `train` and `test` folders and `merge`s them into a single data frame.
2. It then gets the column labels from the `features.txt` file and sets the resultant vector to `names(data)`.  With column names sorted, it uses a combination of `grep` commands to subset the data to columns containing either mean or standard deviation information.
3. The code next pulls the activity types from the `train/y_train/txt` and `test/y_test.txt` files, combines them as the previous data, and makes the column a factor with labels given by the `activity_lables.txt` file.
4. Though column names were sorted while dealing with Step 2, we'll add here that the code also adds a `Subject` factor column using the `train/subject_train.txt` and `test/subject_test.txt` files, `merge`ing them as before.
5. Finally, we use an `aggregate` command on the non-factor columns by the factor columns, running the function `mean` to get the means in each Activity/Subject factor pair.  This data is then written to the `tidy_data.txt` file as output after the columns the `aggregate` function adds are appropriately renamed.

Thanks
------

I hope it meets your approval.  Best wishes, and good luck with the rest of the Data Science sequence!
