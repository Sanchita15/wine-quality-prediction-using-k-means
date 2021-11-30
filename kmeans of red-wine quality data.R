wine=read.csv("C:/Users/Sanchita Dabre/Desktop/EXCEL/winequality-red.csv")
head(wine)
str(wine)
summary(wine)
red=data.matrix(wine)
red=na.omit(red)
red
sample=red[sample(nrow(red),250),]
sample
sample_short=sample[c(1,4,6,7,9,11,12)]
sample_matrix=data.matrix(sample_short)
View(sample_matrix)
install.packages("factoextra")
library(factoextra)

fviz_nbclust(wine,kmeans,method = "wss") +geom_vline(xintercept = 4,linetype=2)+labs(subtitle = "elbow method")
cl=kmeans(sample_matrix,3,nstart=25)
cl
plot(sample_matrix,col=(cl$cluster+1),main="k-means result with 2 clusters",pch=1,cex=1,las=1)
points(cl$centers,col="black",pch=17,cex=2)

plot(sample_matrix,col=(cl$cluster+1),main="k-means result with 2 clusters",pch=1,cex=1,las=1)
points(cl$centers,col="black",pch=17,cex=2)






