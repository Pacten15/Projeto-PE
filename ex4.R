library(readxl)
library(ggplot2)
Utentes <- read_excel("C:/Users/luism/Downloads/Utentes.xlsx")
pedido<-data.frame(Utentes$Idade,Utentes$IMC)
colnames(pedido)[1]<-"Idade"
colnames(pedido)[2]<-"IMC"
ggplot(data=pedido,aes(x=`Idade`,y=`IMC`))+
  geom_point()+
  labs(title="Gráfico de Dispersão entre Idade e o IMC")


  