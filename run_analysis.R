#
# Script to clean the Samsung activity data for the course project.

# the top level directory in the zip file
base_dir  <- "UCI HAR Dataset"

# utility function to convert the feature name into something more
# suitable for a column name:
# - remove braces
# - convert "-" to "."
# - make lower case
fix.name <- function (name){
    tmp <- gsub("[()]", "", name)
    tolower(gsub("-", ".", tmp))
}

# read in the column names from features.txt
features <- read.table(file.path(base_dir, "features.txt"),
                       sep=" ", col.names=c("col", "name"),
                       as.is="name")

# get the columns that contain the mean and standard deviation
mean_std_cols  <- features[grep("-(mean|std)\\(\\)", features$name),]
mean_std_cols$name <- fix.name(mean_std_cols$name)

# get the names of the activities
activity_names <- read.table(file.path(base_dir, "activity_labels.txt"),
                             stringsAsFactors = FALSE)

# Function to read the samsung data and put it all together.
# Reads the phone sensor data, activity category and subjects from separate
# files and compiles them all into one data frame.
# only the columns given by the "cols" parameter are kept from the sensor data
# - this should be a data frame with two columns, "col" gives the current column
# name and "name" gives a more friendly version of the name that will be used
# in the final version
read.samsung <- function (dirname, cols, activity_names) {
    x_file  <- paste("X_", dirname, ".txt", sep="")
    y_file  <- paste("y_", dirname, ".txt", sep="")
    subj_file  <- paste("subject_", dirname, ".txt", sep="")

    data <- read.table(file.path(base_dir, dirname, x_file))
    data <- data[,cols$col]
    names(data) <- cols$name

    activities  <- read.table(file.path(base_dir,dirname, y_file))
    data$activity <- as.character(lapply(activities$V1,
                                         function (x){activity_names[x,2]}))

    subjects  <- read.table(file.path(base_dir, dirname, subj_file))
    data$subject <- as.numeric(subjects$V1)

    return(data)
}

# read the data from the "train" and "test" directories
training  <-  read.samsung("train", mean_std_cols, activity_names)
testing  <- read.samsung("test", mean_std_cols, activity_names)

# combine them into one data frame
full_data  <- rbind(training, testing)

# convert the activity column to factors
full_data$activity <- as.factor(full_data$activity)

# create a summary table with
summary <- aggregate(full_data[,1:66],
                     list(subject=full_data$subject,
                          activity=full_data$activity),
                     mean)

# save the summary to a file
write.table(summary, "summary.txt", row.name=FALSE)

