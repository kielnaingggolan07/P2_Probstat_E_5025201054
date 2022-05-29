--soal4a
Datacat <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"),header = TRUE, check.names = TRUE)
byGroup <- split(Datacat, Datacat$Group)
grup1 <- byGroup$`1`
grup2 <- byGroup$`2`
grup3 <- byGroup$`3`

qqnorm(grup1$Length,main = "Grup1")
qqnorm(grup2$Length,main = "Grup2")
qqnorm(grup3$Length,main = "Grup3")

--soal4b
bartlett.test(Datacat$Length, Datacat$Group)

--soal4c
model1 <- lm(Datacat$Length~Datacat$Group)
summary(model1)

--SOAL4e
av <- aov(Length ~ factor(Group), data = Datacat)
TukeyHSD(av)

--soal4f
library(ggplot2)
ggplot(Datacat, aes(x = Group, y = Length)) + 
  geom_boxplot(fill = "black", colour = "red")  + 
  scale_x_discrete() + xlab("Group") + ylab("Length")