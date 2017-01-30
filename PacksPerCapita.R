setwd("~/R/PacksPerCapita")

library(ggplot2)
data <- read.csv("~/R/PacksPerCapita/Data/PPC_data.csv")

data$YEAR <- as.character(data$YEAR)
data$YEAR <- as.Date(data$YEAR, "%Y")

pdf(file = "~/R/PacksPerCapita/Visuals/ppc.pdf")
ggplot(data, aes(data$YEAR, data$PPC)) + geom_line() + 
        xlab("calendar year") + ylab("packs per year") +
        stat_smooth(colour="blue")

dev.off()
