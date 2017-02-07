setwd("~/R/PacksPerCapita")

library(ggplot2)
data <- read.csv("~/R/PacksPerCapita/Data/PPC_data.csv")

data$YEAR <- as.character(data$YEAR)
data$YEAR <- as.Date(data$YEAR, "%Y")

pdf(file = "~/R/PacksPerCapita/Visuals/ppc.pdf")
ggplot(data, aes(data$YEAR, data$PPC)) + 
        geom_line(alpha = 0.6) + 
        xlab("Year") + ylab("Packs") +
        geom_smooth(colour="blue") +
        ggtitle("Cigarettes Purchased in Colorado per Capita, 1990-2016") +
        theme(plot.title = element_text(family = "Trebuchet MS", color="#666666", face="bold", size=20, hjust=0)) +
        theme(axis.title = element_text(family = "Trebuchet MS", color="#666666", face="bold", size=15))
dev.off()
