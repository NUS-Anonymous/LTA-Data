library(jsonlite)
library(geosphere)

MRTExits <- fromJSON("C:/Users/lcttnguyen/Desktop/R/BusStopLocation.json")
exitsCoord <- unlist(MRTExits$features$geometry$coordinates)
exitsCoord <- matrix(exitsCoord,ncol=2,nrow=length(exitsCoord)/2, byrow = TRUE)
colnames (exitsCoord) <- c("longitude","latitude")

hexcenter <- read.csv("C:/Users/lcttnguyen/Desktop/R/Hexagon.csv")
hexcenter <- hexcenter[,2:3]
density <- c()

center <- data.matrix(hexcenter)



#calculate the distance and increment counter
for (i in 1:nrow(hexcenter)) {
  count <- 0
  for ( j in 1:nrow(exitsCoord)){
    distance <- distCosine(center[i,],exitsCoord[j,],r=6378137)
    if (distance <= 1000) {
      count=count+1
    }
  }
	density<- c(density,count)
}

write.table(density, file = 'clean.csv',sep = '|',row.names=FALSE,col.names=TRUE)