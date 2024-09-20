install.packages("tidyverse") #loading required packages
install.packages("rempsyc")
library(tidyverse)
library(rempsyc)

data("ToothGrowth") #data 
head(ToothGrowth)
nice_violin(data = ToothGrowth,
            group = "dose",
            response = "len")
ggplot2::ggsave("nice_violinplothere.pdf", width = 7, height = 7,
                unit = 'in', dpi = 300)
nice_violin(data = ToothGrowth,
            group = "dose",
            response = "len",
            ytitle = "Length of Tooth",
            xtitle = "Vitamin C Dosage")

#set comparisons 
nice_violin(data = ToothGrowth,
            group = "dose",
            response = "len",
            ytitle = "Length of Tooth",
            xtitle = "Vitamin C Dosage",
            signif_annotation = c("*","**","***"), # manually enter the number of stars
            signif_yposition = c(30,36,40), # What height (y) should the stars appear?
            signif_xmin = c(1,2,1), # Where should the left-sided brackets start (x)?
            signif_xmax = c(2,3,3)) # Where should the right-sided brackets end (x)?


#set the colours manually
nice_violin(data = ToothGrowth,
            group = "dose",
            response = "len",
            colours = c("darkseagreen","cadetblue","darkslateblue"),
            ytitle = "Length of Tooth",
            xtitle = "Vitamin C Dosage",
            signif_annotation = c("*","**","***"), # manually enter the number of stars
            signif_yposition = c(30,36,40), # What height (y) should the stars appear?
            signif_xmin = c(1,2,1), # Where should the left-sided brackets start (x)?
            signif_xmax = c(2,3,3)) # Where should the right-sided brackets end (x)?

#Plotting individual observations
nice_violin(data = ToothGrowth,
            group = "dose",
            response = "len",
            obs = TRUE,
            colours = c("darkseagreen","cadetblue","darkslateblue"),
            ytitle = "Length of Tooth",
            xtitle = "Vitamin C Dosage",
            signif_annotation = c("*","**","***"), # manually enter the number of stars
            signif_yposition = c(30,36,40), # What height (y) should the stars appear?
            signif_xmin = c(1,2,1), # Where should the left-sided brackets start (x)?
            signif_xmax = c(2,3,3)) # Where should the right-sided brackets end (x)?

nice_scatter(data = mtcars,
             predictor = "wt",
             response = "mpg",
             has.confband = TRUE,
             has.r = TRUE,
             has.p = TRUE)
