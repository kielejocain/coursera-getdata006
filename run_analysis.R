## Make sure you set your working directory to the `UCI HAR Dataset' folder.

## STEP 1

## Get the unlabled data from both sets and combine it.
data_train <- read.table("train/X_train.txt", stringsAsFactors = FALSE)
data_test <- read.table("test/X_test.txt", stringsAsFactors = FALSE)
data <- rbind(data_train, data_test)

## STEP 2

## First, we obtain the labels for the 561 measurements and set them.
labels <- read.table("features.txt", stringsAsFactors=FALSE)
labels <- as.vector(labels[,2])
colnames(data) <- labels

## Next, we select only columns that means or standard deviations.
data <- data[,sort(c(grep("mean()",names(data)),grep("std()", names(data))))]

## STEP 3

## We now grab the activity taking place in each row from the y_train and
## y_test files, then assign the column as a factor with labels given in the
## activity_labels file.
act_train <- read.table("train/y_train.txt")
act_test <- read.table("test/y_test.txt")
act <- rbind(act_train, act_test)
act_names <- read.table("activity_labels.txt")
data$Activity <- factor(act$Activity, labels = act_names[,2])

## STEP 4

## in my opinion, this was done during STEP 2, as labeling the data columns
## assisted me in culling the data.

## STEP 5

## First, we add the subject column.
subj_train <- read.table("train/subject_train.txt")
subj_test <- read.table("test/subject_test.txt")
subj <- rbind(subj_train, subj_test)
data$Subject <- factor(subj[, 1])

## Next, we compute the means along the factors.
tidy_data <- aggregate(data[, 1:79], by = list(data$Activity, data$Subject),
                       FUN = mean)

## Finally, we give the factors their original names.
names(tidy_data)[1] <- c("Activity")
names(tidy_data)[2] <- c("Subject")
write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)