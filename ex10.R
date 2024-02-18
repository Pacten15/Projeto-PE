library("ggplot2")
set.seed(590)
domain_of_n <- vector()
for(i in 1:25)
{
  domain_of_n <- c(domain_of_n,i*100)
}
MA_n_nao_contaminado <- vector()
MA_n_contaminado <- vector()
n_list <- vector()
for(n in domain_of_n)
{
  vetor_de_amplitudes_nao_contaminado <- vector()
  vetor_de_amplitudes_contaminado <- vector()
  n_list <- c(n_list,n)
  for(m in 1:1000)
  {
    values_nao_contamindos <- rexp(n,3.54)
    values_contaminados <- c(rexp(n*0.30,0.41),values_nao_contamindos[1:(0.70*n)])
    margem_de_erro_esquerdo_nao_contaminado <- qnorm(0.95 + (1-0.95)/2)*sd(values_nao_contamindos)/(sqrt(n))
    margem_de_erro_esquerdo_contaminado <- qnorm(0.95 + (1-0.95)/2)*sd(values_contaminados)/(sqrt(n))
    #pois como a margem de erro é simétrica da esquerda e da direita então a 
    #amplitude é o dobro da margem de erro esquerda
    vetor_de_amplitudes_nao_contaminado <- c(vetor_de_amplitudes_nao_contaminado,2*margem_de_erro_esquerdo_nao_contaminado)
    vetor_de_amplitudes_contaminado <- c(vetor_de_amplitudes_contaminado,2*margem_de_erro_esquerdo_contaminado)
  }
  MA_n_nao_contaminado <- c(MA_n_nao_contaminado,mean(vetor_de_amplitudes_nao_contaminado))
  MA_n_contaminado    <- c(MA_n_contaminado,mean(vetor_de_amplitudes_contaminado))
}

result <- data.frame(n_list,MA_n_nao_contaminado,MA_n_contaminado)

ggplot(data=result,aes(x=n_list)) + 
  geom_point(aes(y=MA_n_nao_contaminado, col= "MA(n)")) + 
  geom_point(aes(y=MA_n_contaminado, col= "MAc(n)" )) +
  labs(title="Média de Amplitude Não Contaminada e Contaminada",colour ='Média de Amplitude')+
  xlab("n") + ylab("MA(n) e MAc(n)")+ scale_color_manual(values=c("MA(n)" = 'green',"MAc(n)"='red'))


