install.packages("fmsb")
# Library
library(fmsb)


data <- as.data.frame(matrix(c(15, 15, 10, 0), ncol=4))
colnames(data) <- c("im a piece of trash" , "nothing is real" , "i was cut from the cloth of god", "what am i gonna eat")
data <- rbind(rep(20,10) , rep(0,10) , data)
head(data)


radarchart(data, axistype=1 , 
           
           #custom polygon
           pcol= rgb(1,0,0,0.8) , pfcol=rgb(0.8,0,0,0.5)  , plwd=2 ,
           
           #custom the grid
           cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,120,20), cglwd=1,
          
           #custom labels
           vlcex=0.7, 
           )

legend(1,
       legend=c("mood"),
       col=c("red"),
       lty=c(1))
