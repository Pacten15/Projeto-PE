library("ggplot2")
Países <- c("Alemanha","Espanha","Islandia","Alemanha","Espanha","Islandia")
Ano <- c("2004","2004","2004","2018","2018","2018")
ResiduosPerCapita<- c(4.4,3.7,1.7,4.9,2.9,3.7)


pedido_frame <- data.frame(Países,Ano,ResiduosPerCapita)



ggplot(data = pedido_frame, aes(y = ResiduosPerCapita,x = Países,fill=Ano)) + 
  geom_bar(stat = "identity",position = "dodge")+ 
  geom_text(mapping=aes(label = ResiduosPerCapita),position = position_dodge(width=0.9),cex=4,vjust=1)+
  labs(title="Resíduos per capita de alguns países") + ylab("Resíduos per capita(em toneladas)")
