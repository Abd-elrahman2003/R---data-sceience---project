csv_file <- read.csv("D:/grc.csv")
library("dplyr")
cluster_num <- as.integer(readline(prompt = "enter clusters num(2:4): "))
if(cluster_num >= 2 && cluster_num <= 4)
{
  new_data <- select(csv_file , age , total)
  clusters <- kmeans(new_data , cluster_num)
  clusters <- clusters$cluster
   clusters<-data.frame(select(csv_file , customer , age , total) , groub = clusters)
}
clusters
