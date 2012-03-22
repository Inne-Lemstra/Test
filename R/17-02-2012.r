#dag 4
#(c) Inne
#?plotmath

setwd("X:/computational")

y1 <- runif(100)*5 + (1:100)*0.5
y2 <- runif(100)*20 + (1:100)*0.001
x <- 1:100

lm(y1~x)
lm(y2~x)

estimatesy1 <- lm(y1~x) [[1]] [1]+ lm(y1~x)[[1]][2]*1:10
estimatesy1

estimatesy2 <- lm(y2~x) [[1]][1] + lm(y2~x)[[1]][2]*1:10
estimatesy2

plot(y1)

r1 <- runif(100)*5
r2 <- runif(100)*5
t.test(r1,r2)$p.value

#A6.0
gene <- as.matrix(read.table("genotypes.txt"))
pheno <- as.matrix(read.table("phenotypes.txt"))

mycolnames <- colnames(gene)
for(x in 1:ncol(gene)){
	ind1 <- which(gene[,x]== 1)
	ind2 <- which(gene[,x]== 2)
	cat(mycolnames[x],"Dad:",ind1,"\n", mycolnames[x],"Mom:",ind2,"\n\n")
	}

#A6.1

phenotype <- 1
meansP <- NULL
meansM <- NULL
for(marker in 1:ncol(gene)){
  ind1 <- which(gene[,marker]==1)
  meansP <- c(meansP,mean(pheno[ind1,phenotype],na.rm=T))
  ind2 <- which(gene[,marker]==2)
  meansM <- c(meansM,mean(pheno[ind2,phenotype],na.rm=T))
  }
plot(1:ncol(gene),(meansP,meansM))

#A6.2
gene <- as.matrix(read.table("genotypes.txt"))
pheno <- as.matrix(read.table("phenotypes.txt"))
for(phenotype in 1:ncol(pheno)){
    meansP <- NULL
    meansM <- NULL
	for(marker in 1:ncol(gene)){
	  ind1 <- which(gene[,marker]==1)
	  meansP <- c(meansP,mean(pheno[ind1,phenotype],na.rm=T))
	  ind2 <- which(gene[,marker]==2)
	  meansM <- c(meansM,mean(pheno[ind2,phenotype],na.rm=T))
	}
	name <- paste("plot",phenotype,".png",sep="")
	minx <- 0
	maxx <- ncol(gene)
	miny <- min(c(meansP,meansM)) * 0.75
	maxy <- max(c(meansP,meansM)) * 1.25
    png(filename=name, bg="white")
	plot(x=c(minx,maxx),y=c(miny,maxy),t='n',xlab="marker", ylab="concentratie", main=paste("marker", phenotype))
	points(meansP,t='o',col="red")
	points(meansM,t='o',col="green")
	dev.off()
}
  plot(x=c(minx,maxx),y=c(miny,maxy),t='n')

#A6.3
t.test(runif(1000),y=rnorm(1000,m=0,sd=0.5),
	mu=0 ,alternative= "two.sided",conf.level=0.95)$p.value 


#A6.4
gene <- as.matrix(read.table("genotypes.txt"))
pheno <- as.matrix(read.table("phenotypes.txt"))
result <- NULL
for(marker in 1:ncol(gene)){
	{
	  ind1 <- which(gene[,marker]==1)
	  meansP <- c(meansP,mean(pheno[ind1,1],na.rm=T))
	  ind2 <- which(gene[,marker]==2)
	  meansM <- c(meansM,mean(pheno[ind2,1],na.rm=T))
	}
	marker<- t.test(meansP,y=meansM, alternative="two.sided", conf.level=0.95)$p.value
	result<- c(result,marker)
	}

#A8.0
url.exists("www.google.com")
getURL("www.google.com")

searchGoogle <- function(zoekterm = "Dinosaurus"){
uri <- paste("http://www.yahoo.com/?q=",zoekterm,sep="")
getURL(uri)
}

#A8.1
url.exists("http://www.google.nl/images/srpr/logo3w.png")
getURL("http://www.google.nl/images/srpr/logo3w.png")


