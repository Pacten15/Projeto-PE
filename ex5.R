set.seed(787)
values <- rexp(549,0.15)
counter <- 0
resultados_função_de_distribuição<-ecdf(values)
Fn <- ecdf(values)
pontos_de_mudança <- knots(Fn)
plot(Fn,verticals=FALSE,do.points=TRUE)
for(i in pontos_de_mudança)
  if(i>3)
    counter = counter+1
result <- counter/396

valor_estimado<-1-Fn(3)

valor_teórico <- 1-pexp(3, rate = 0.15)

final_result<-valor_teórico - valor_estimado
knots(Fn)
#P(X>3) = 1 - P(<=3)