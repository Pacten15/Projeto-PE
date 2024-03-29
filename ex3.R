library("ggplot2")
library(readxl)
QualidadeARO3 <- read_excel("C:/Users/luism/Downloads/QualidadeARO3.xlsx", 
                            col_types = c("numeric", "numeric", "numeric", 
                                          "numeric", "numeric", "numeric", 
                                          "numeric", "numeric", "numeric", 
                                          "numeric"))
VNTelhaMaia <- QualidadeARO3$`VNTelha-Maia`
PaioPires <- QualidadeARO3$`Paio-Pires`
pedido_p_1 <- data.frame(VNTelhaMaia)
pedido_p_2 <- data.frame(PaioPires)
pedido_p_1$`Esta��o de rede` <-'VNTelha-Maia'
pedido_p_2$`Esta��o de rede` <- 'Paio-Pires'
colnames(pedido_p_1)[1] = 'N�vel de ozono'
colnames(pedido_p_2)[1] = 'N�vel de ozono'
pedido_final<-rbind(pedido_p_1,pedido_p_2)
ggplot(data=pedido_final,aes(y=`N�vel de ozono`,fill=`Esta��o de rede`))+
  geom_histogram(color="black",lwd=0.4,linetype=1,alpha=0.7,position="identity",binwidth = 5)+
  scale_fill_manual(values=c("red2","deepskyblue"))+
  labs(title="Observa��es hor�rias de n�veis de ozono em 2020")+
  ylab("N�vel de Ozono(mg/m^3)")+
  xlab("Frequ�ncia que ocorre ao longo do ano")
