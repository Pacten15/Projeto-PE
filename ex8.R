set.seed(710)
vetor_de_amplitudes <- vector()
for(n in 1:1300)
{
  values <- rexp(612,4.45)
  margem_de_erro_esquedo <- qnorm(0.92 + (1-0.92)/2)*sd(values)/(sqrt(612))
  #pois como a margem de erro é simetrica da esquerda e da direita então a 
  #amplitede é o dobro da margem de erro
  vetor_de_amplitudes <- c(vetor_de_amplitudes,2*margem_de_erro_esquedo)
  
}


result <- mean(vetor_de_amplitudes)
