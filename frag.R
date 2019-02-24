ex01 <- read.table("/home/emanuel/Área de Trabalho/Trabalho de Mestrado/Laboratório/Analisador/result-agg/coloniat.txt") 
ex02 <- read.table("/home/emanuel/Área de Trabalho/Datasets/M40-d12-h11/M40.txt") 
ex03 <- read.table("/home/emanuel/Área de Trabalho/Datasets/M40-d12-h11/result.txt") 
ex04 <- read.table("/home/emanuel/Área de Trabalho/Laboratório/az_rawdata_mc/az_rawdata_mc.txt") 
ex05 <- read.table("/home/emanuel/Área de Trabalho/Datasets/M40-d12-h11/result.txt") 
a <- data.frame(ex01)
b <- data.frame(ex02)
c <- data.frame(ex03)
subset(a, V3 == 2)

library(ggplot2)

library(igraph)
# Basic line plot with points
ggplot(data=c, aes(x=c$V1, y=c$V2, group=1)) +
  geom_line()+
  geom_point()

for(i in c(1:13)){
  write.table(subset(a, V3 == i, select= c(V1, V2)), paste0("Time", i,".txt"), row.names=F,col.names =F)
}        
