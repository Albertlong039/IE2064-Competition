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

