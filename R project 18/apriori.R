library(arules)
datasetpath<- readline("Enter the path: ")
data2 <- read.csv(datasetpath)
while (TRUE) {
  
min_support <- as.numeric(readline("Enter the min_support betwen [0.001:1] : "))
min_confidince <- as.numeric(readline("Enter the min_confidince  betwen [0.001:1] : "))
if (min_support>=0.001 && min_support<=1 && min_confidince >=0.001 && min_confidince<=1 )
  { 
  write.table(data2 $items,"apriori.txt",row.names= FALSE ,col.names = FALSE , quote= FALSE )
  tdata <- read.transactions( "apriori.txt" , sep=",")
apriori_rules <- apriori(tdata,
parameter = list(supp = min_support, conf = min_confidince , minlen=2 ))
inspect(apriori_rules)
break
}else
  print("[invaild] Check your numeric input")

}
