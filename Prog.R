# Exploratory-Data-Analysis

library("ggplot2")
library("tidyr")

datafile <- read.csv(file.choose())

datafile.clean <- datafile[datafile$Level=="DISTRICT",]

datafile.clean1 <- datafile.clean[datafile.clean$TRU!="Total",]

x <- ggplot(datafile.clean1) + aes(datafile.clean1$Name,datafile.clean1$Total.Population.Person,fill=datafile.clean1$TRU)
x + geom_bar(stat = "identity",width = 0.5,position = position_dodge(0.5)) + theme(axis.text.x = element_text(angle = -90,vjust = 0.5,hjust = 0))

z <- ggplot(datafile.clean1) + aes(Name,Total.Population.Person,fill=TRU)
z + geom_bar(stat = "identity",width = 0.5,position = position_dodge(0.5)) + theme(axis.text.x = element_text(angle = -90,vjust = 0.5,hjust = 0))

temp <- gather(datafile.clean1,Gender,population,15:17)

a <- ggplot(temp) + aes(Name,population,fill=Gender)
a + geom_bar(stat = "identity",width = 0.5,position = position_dodge(0.5)) + theme(axis.text.x = element_text(angle = -90,vjust = 0.5,hjust = 0))

b <- ggplot(temp) + aes(TRU,population,fill=Gender)
b + geom_bar(stat = "identity",width = 0.5,position = position_dodge(0.5)) + theme(axis.text.x = element_text(angle = -90,vjust = 0.5,hjust = 0))

temp <- gather(datafile.clean1,Gender,literacy,27:29)
c <- ggplot(temp) + aes(Name,literacy,fill=Gender)
c + geom_bar(stat = "identity",width = 0.5,position = position_dodge(0.5)) + theme(axis.text.x = element_text(angle = -90,vjust = 0.5,hjust = 0))

e <- ggplot(datafile.clean) + aes(x = TRU,y = literacy,fill=Gender)
e + geom_bar(stat = "identity",width = 0.5,position = position_dodge(0.5)) + theme(axis.text.x = element_text(angle = -90,vjust = 0.5,hjust = 0))

temp <- gather(datafile.clean1,Gender,Illiteracy,30:32)
g <- ggplot(temp) + aes(x = Name,y = Illiteracy,fill=Gender)
g + geom_bar(stat = "identity",width = 0.5,position = position_dodge(0.5)) + theme(axis.text.x = element_text(angle = -90,vjust = 0.5,hjust = 0))

d <- ggplot(temp) + aes(x = TRU,y = Illiteracy,fill=Gender)
d + geom_bar(stat = "identity",width = 0.5,position = position_dodge(0.5)) + theme(axis.text.x = element_text(angle = -90,vjust = 0.5,hjust = 0))

temp <- gather(datafile.clean1,Gender,Working.Population,33:35)
h <- ggplot(temp) + aes(x = Name,y = Working.Population,fill=Gender)
h + geom_bar(stat = "identity",width = 0.5,position = position_dodge(0.5)) + theme(axis.text.x = element_text(angle = -90,vjust = 0.5,hjust = 0))

i <- ggplot(datafile.clean1) + aes(x = TRU,y = Working.Population,fill=Gender)
i + geom_bar(stat = "identity",width = 0.5,position = position_dodge(0.5)) + theme(axis.text.x = element_text(angle = -90,vjust = 0.5,hjust = 0))


temp <- gather(datafile.clean1,Gender,Non.Working.Population,96:98)
k <- ggplot(temp) + aes(x = TRU,y = Non.Working.Population,fill=Gender)
k + geom_bar(stat = "identity",width = 0.5,position = position_dodge(0.5)) + theme(axis.text.x = element_text(angle = -90,vjust = 0.5,hjust = 0))

l <- ggplot(temp) + aes(x = Name,y = Non.Working.Population,fill=Gender)
l + geom_bar(stat = "identity",width = 0.5,position = position_dodge(0.5)) + theme(axis.text.x = element_text(angle = -90,vjust = 0.5,hjust = 0))
