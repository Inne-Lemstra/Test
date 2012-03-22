#dag 3
#(c) Inne
# ?plotmath is awesome

setwd("X:/computational")

png(filename = " myplot.png", bg="white")
image(matrix(rnorm(2500),50,50), main= "image example", col=gray.colors(10))
dev.off()



phi <- 0
theta <- 0
while(TRUE){
  persp(z=matrix(rnorm(2500),50,50),xlab="Random",ylab="Random", main= "image example", col=gray.colors(10),theta=theta,phi=phi)
  theta <- theta +15
  phi <- phi+5
}

#pii in kleuren
  
  data <- read.table("pii.txt",colClasses=c("character"))
  string <- paste(unlist(data),collapse="")
  pii <- strsplit(string, split="")
  loss <- as.numeric(unlist(pii[[1]]))
  #loss <- loss[-which(is.na(loss))]
  piimatrix<-matrix(loss,1000,1000)
  #png(filename="pi.png",bg=rgb(0,0,0,1))
  image(piimatrix, main="pi", col=rainbow(10))
  dev.off()
  
  plot(sin(0:10),type="l", lty=1, col="red",lwd=2, main="legend example")
  points(cos(0:10), type="l", lty=2, col="green",lwd=2)
  legend("topright", c("sin(x)","cos(x)"),lty=1:2, col=c("red","green"), lwd=2)
  
  x<-runif(12)
  plot(x,pch=20, col="blue", main="arrow example")
  arrows(1,0,1,x[1]-0.01, col="red", lwd=2)
  arrows(5,0,5,x[5]-0.01, col="red", lwd=2)
  
  #A4.0
  genotypes <- read.table("genotypes.txt")
  image(as.matrix(genotypes), main="plot genotypes", bg="white")

  #A4.1
  phenotypes <- read.table("phenotypes.txt")
  boxplot(phenotypes, col=rainbow(75),main= "phenotypes", xlab="eiwit", ylab="concentratie", names=TRUE)
  
  #A4.2
  genotypes <- read.table("genotypes.txt")
  png(filename="heatmap.png", bg = "blue")
  heatmap(as.matrix(genotypes),Colv=NA, main="plot genotypes", ylab="rows")
  dev.off()
  
  #A4.3 
  genotypes <- read.table("genotypes.txt")
  phenotypes<- read.table("phenotypes.txt")
  plot(phenotypes[,1], col=genotypes[,1])
  
  #A4.4
  genotypes <- read.table("genotypes.txt")
  phenotypes<- read.table("phenotypes.txt")
  plot(phenotypes[,1], col=genotypes[,1])
  legend("topright", c("father","mother"),pch=1, col=c(1,2))
  
  heatmap(as.matrix(genotypes),Colv=NA, main="plot genotypes", ylab="rows")
   legend("bottom",c("Pappa","Mamma"),col=c("red","goldenrod"),lwd=2,lty=1, bg="white")
   
   
  