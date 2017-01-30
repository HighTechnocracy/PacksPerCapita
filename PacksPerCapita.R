library(ggplot2)
data <- read.csv("PPC_data.csv")

data$YEAR <- as.character(data$YEAR)
data$YEAR <- as.Date(data$YEAR, "%Y")

pdf(file = "Rplots.pdf")
ggplot(data, aes(data$YEAR, data$PPC)) + geom_line() + 
        xlab("calendar year") + ylab("packs per year") +
        stat_smooth(colour="green")

dev.off()