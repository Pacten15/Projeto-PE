rm(list=ls())
library("ggplot2")

Anos <-c(2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,
         2012,2013,2014,2015,2016,2017,2018,2019)

Paises <- r("LU-Luxemburgo","DK-Dinamarca","SI-Eslovenia")


LuxemburgoH<-c(74.6,74.8,76.0,76.7,76.8,76.7,78.1,78.1,77.9,
               78.5,79.1,79.8,79.4,80.0,80.1,79.9,80.1,80.2)

DinamarcaH <- c( 74.8,75.0,75.4,76.0,76.1,76.2,76.5,76.9,77.2,
                 77.8,78.1,78.3,78.7,78.8,79.0,79.2,79.1,79.5)
EsloveniaH <-c( 72.6,72.5,73.5,73.9,74.5,74.6,75.5,75.9,76.4,
                76.8,77.1,77.2,78.2,77.8,78.2,78.2,78.5,78.7)

LuxemburgoM<-c(81.5,80.8,82.4,82.3,81.9,82.2,83.1,83.3,83.5,
               83.6,83.8,83.9,85.2,84.7,85.4,84.4,84.6,85.2)

DinamarcaM<-c(79.4,79.8,80.2,80.5,80.7,80.6,81.0,81.1,81.4,81.9,
              82.1,82.4,82.8,82.7,82.8,83.1,82.9,83.5)

EsloveniaM<-c( 77.7,77.7,78.0,78.1,78.4,78.4,79.0,79.1,79.3,79.8,
               79.9,80.1,80.5,80.2,80.7,80.7,80.8,81.2)

pedido_total <-data.frame(Anos,DinamarcaH,EsloveniaH,LuxemburgoH,DinamarcaM,EsloveniaM,LuxemburgoM)

colnames(pedido_total)[2] <- 'Dinamarca-Homem'
colnames(pedido_total)[3] <- 'Eslovenia-Homem'
colnames(pedido_total)[4] <- 'Luxemburgo-Homem'
colnames(pedido_total)[5] <- 'Dinamarca-Mulher'
colnames(pedido_total)[6] <- 'Eslovenia-Mulher'
colnames(pedido_total)[7]<- 'Luxemburgo-Mulher'
ggplot(data=pedido_total,aes(x=Anos))+
  geom_line(aes(y=`Eslovenia-Homem`,color='Eslovenia-Homem'),lwd=1)+
  geom_point(aes(y=`Eslovenia-Homem`),color='yellow')+
  geom_line(aes(y=`Dinamarca-Homem`,color = 'Dinamarca-Homem'),lwd=1)+
  geom_point(aes(y=`Dinamarca-Homem`))+
  geom_line(aes(y=`Luxemburgo-Homem`,color='Luxemburgo-Homem'),lwd=1)+
  geom_point(aes(y=`Luxemburgo-Homem`))+
  geom_line(aes(y=`Eslovenia-Mulher`,color='Eslovenia-Mulher'),lwd=1)+
  geom_point(aes(y=`Eslovenia-Mulher`),color='blue')+
  geom_line(aes(y=`Dinamarca-Mulher`,color='Dinamarca-Mulher'),lwd=1)+
  geom_point(aes(y=`Dinamarca-Mulher`),color='black')+
  geom_line(aes(y=`Luxemburgo-Mulher`,color = 'Luxemburgo-Mulher'),lwd=1)+
  geom_point(aes(y=`Luxemburgo-Mulher`))+
  labs(title="Esperança de vida à nascença: total e por sexo",colour ='País-Tipo')+
  ylab("Esperança de vida à nascença")+scale_colour_manual(values=c('Eslovenia-Homem'='deepskyblue',
                                                                    'Dinamarca-Homem'='darkorange4',
                                                                    'Luxemburgo-Homem'='green',
                                                                    'Eslovenia-Mulher'='yellow',
                                                                    'Dinamarca-Mulher'='magenta1',
                                                                    'Luxemburgo-Mulher'='red'))

