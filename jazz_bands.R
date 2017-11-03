df<-read.csv("/Users/saralafia/Desktop/jazz-json.csv")

M = as.matrix( table(df) )

Mrow = M %*% t(M)

#Mcol = t(M) %*% M

write.csv(Mrow,"test.csv")

iMrow = graph.adjacency(Mrow, mode="undirected")

E(iMrow)$weight <- count.multiple(iMrow)

iMrow <- simplify(iMrow)
write.graph(iMrow, file="/Users/saralafia/Desktop/graph.graphml",format = "graphml")
