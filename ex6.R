set.seed(1559)
mean_list1 <- numeric()
mean_list2 <- numeric()
mean_list3 <- numeric()
for(n in 1:1190)
{
  values_1 <- runif(2,min=0,max=4)
  values_2<-runif(30,min=0,max=4)
  values_3<-runif(86,min=0,max=4)
  mean_list1 <-c(mean_list1,mean(values_1))
  mean_list2<-c(mean_list2,mean(values_2))
  mean_list3<-c(mean_list3,mean(values_3))
}
normal_distribution_mean_list1<-rnorm(1190,mean(mean_list1),sd(mean_list1))
normal_distribution_mean_list2<-rnorm(1190,mean(mean_list2),sd(mean_list2))
normal_distribution_mean_list3<-rnorm(1190,mean(mean_list3),sd(mean_list3))
par(mfrow=c(1,3))
hist(mean_list1,main="n=2",prob=TRUE,xlab = "distribuição das medias",ylab = "frequência relativa")
lines(density(normal_distribution_mean_list1),col=4,lwd=2)
hist(mean_list2,main="n=30",prob=TRUE,xlab = "distribuição das medias",ylab = "frequência relativa")
lines(density(normal_distribution_mean_list2),col=4,lwd=2)
hist(mean_list3,main="n=86",prob=TRUE,xlab = "distribuição das medias",ylab = "frequência relativa")
lines(density(normal_distribution_mean_list3),col=4,lwd=2)

