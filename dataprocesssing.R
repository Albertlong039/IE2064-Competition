library(dplyr)
library(ggplot2)
library(RColorBrewer)
library(ggpubr)
library(readxl)
cwd <- dirname(rstudioapi::getSourceEditorContext()$path)

data <- read.csv(
  paste(cwd,"/data/2022 Inpatient discharges with consults.csv",sep=""),
  stringsAsFactors = FALSE
)
data1 <- read.csv(
  paste(cwd,"/data/2022 Inpatient discharges total.csv",sep=""),
  stringsAsFactors = FALSE
)
summary(data)

data <- data %>%
  group_by(EMPI) %>%
  mutate(avgLOS = mean(Length.of.Staying))


histogram <- hist(data$Length.of.Staying, breaks = 100, plot = FALSE)

# Calculate the number of observations in each group
group_counts <- histogram$counts

# Create a new variable to store the data of groups larger than 10
large_groups <- group_counts[group_counts > 10]

# Create a histogram of the large groups
