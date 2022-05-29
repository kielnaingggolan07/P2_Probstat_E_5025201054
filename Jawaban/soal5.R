library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

-- soal5a
GTL <- read_csv("GTL.csv")
head(GTL)
str(GTL)
qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)

-- soal5b
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

--soal5c
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

--soal5d
tukey <- TukeyHSD(anova)
print(tukey)

--soal5e
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)