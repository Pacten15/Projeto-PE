library("ggplot2")
set.seed(294)
domain_of_n <- vector()
for(i in 1:50)
{
  domain_of_n <- c(domain_of_n,i*100)
}
MA_n <- vector()
n_list <- vector()
for(n in domain_of_n)
{
  vetor_de_amplitudes <- vector()
  n_list <- c(n_list,n)
  for(m in 1:750)
  {
    values <- rexp(n,2.21)
    margem_de_erro_esquerdo <- qnorm(0.91 + (1-0.91)/2)*sd(values)/(sqrt(n))
    #pois como a margem de erro é simétrica da esquerda e da direita então a 
    #amplitude é o dobro da margem de erro esquerda
    vetor_de_amplitudes <- c(vetor_de_amplitudes,2*margem_de_erro_esquerdo)
  }
  MA_n <- c(MA_n,mean(vetor_de_amplitudes))
}
n_MA_n <- data.frame(n_list,MA_n)
ggplot(data=n_MA_n,aes(x=n_list))+labs(title="Média de Amplitudes de Intervalos de Confiança")+
  geom_line(aes(y=MA_n),col="red")+
  geom_point(aes(y=MA_n),lwd=1)+
  xlab("n")+ylab("MA(n)")

