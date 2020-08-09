library(EconGeo)
M = as.matrix(
  read.csv("https://raw.githubusercontent.com/PABalland/ON/master/amz.csv" , 
           sep = ",", 
           header = T, 
           row.names = 1))
M
co.occurrence(M)
C=co.occurrence(t(M))
C
r=relatedness(C)
r
r[r<1]=0
r[r>1]=1
library(igraph)
g1=graph_from_adjacency_matrix(r,mode = "undirected")
plot(g1)
