set.seed(151)

mean_list<-numeric()
n<-1
for(n in 1:3635)
{
  values <- rbinom(80,13,0.89)
  mean_list <- c(mean_list,mean(values))
}

mean_of_the_mean_list <- mean(mean_list)


Spected_value <- 13*0.89


result <- abs(mean_of_the_mean_list - Spected_value)

