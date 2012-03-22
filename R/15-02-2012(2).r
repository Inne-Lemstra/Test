#dag 3
#(c) Inne

names1<- paste("ind", 1:10, sep="")
names2<- paste("ind", 5:15, sep="")
names2 %in% names1

which(names2 %in% names1)
which(names1 %in% names2)

divide <- function(number){
	res<- number/2
	res
	}
	
#A3.0
	hippo <- function(sideA, sideB){
	res <- sqrt((sideA^2)+(sideB^2))
	res
	}
	
#3.1
facu <- function(facultee){
	getal<- 1
	for(x in 1:facultee){
	getal<- (getal*x)
	}
	cat(getal)
	}
#3.2
roms <- function(a,b,c){
	x<-matrix(a,b,d)
	apply(x,1,mean)
	}
#3.3

prime <- function(priemgetal){
  if(round(priemgetal)!=priemgetal){
    stop("Gebroken getal")
  }
  for(x in 2:(priemgetal-1)){
	if((priemgetal%%x)<=0){
	  stop("Computer says no")
	}
  }
  cat("A priemgetal is YOU")
}
	


#3.5
set.seed(2346)
hematrix <- matrix(rnorm(100),10,10)
paste(paste(paste("row",1:10),apply(hematrix,1,mean),sep=" "),paste(paste("col",1:10),apply(hematrix,2,mean)))


#A3.6
set.seed(2346)
hematrix <- matrix(rnorm(100),10,10)
which.max(apply(hematrix,2,mean))

#A3.7
set.seed(2346)
hematrix <- matrix(rnorm(100),10,10)
max(hematrix[,which.max(apply(hematrix,2,mean))])

#A3.8
set.seed(2346)
hematrix <- matrix(rnorm(100),10,10)
sort(hematrix[,which.max(apply(hematrix,2,mean))])[(ncol(hematrix)-1)]

#A3.9
set.seed(2346)
hematrix <- matrix(rnorm(100),10,10)
collums_groter <- which(apply(hematrix,2,max)>2)
mean(apply(hematrix[,collums_groter],2,mean))
