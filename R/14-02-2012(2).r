#dag 2
#(c) Inne

#chapter 2
 sample (1000,25)
 runif(9001,75,95)
 rnorm(10,mean=100, sd=5)
 setwd("X:/computational")
 #assignements 2.0
 read.table("phenotypes.txt")
 read.table("genotypes.txt")
 
phenotypes <- read.table("phenotypes.txt") 
phenotypes[1:10,1:10]
#assignements 2.1
genotypes<- read.table("genotypes.txt", )
nrow(genotypes)
genotypes[1:(nrow(genotypes)/2),]

set.seed(9876)
rnorm(10, mean =100, sd=5)

write.table(matrix,file="mylittlematrix.txt",sep="\t")

for(x in 1:100){
	cat("hello world\n",file="log.txt", append = TRUE)
	}
	#append=TRUE voegt extra dingen toe aan document, haalt geen dingen weg
	
#assignement 2.2
mylittlematrix <- colnames(matrix(runif(x),20,5), do.NULL = TRUE, prefix = "col")
	colnames(x) <- paste("inne",1:5)
	


write.table(mylittlematrix,file="mylittlematrix.txt", sep="\t")

	mylittlematrix <- matrix(runif(20*5),20,5)
colnames(mylittlematrix) <- paste("inne", 1:5)
	
	#A2.3

	a<-1
	x<-1
	b<-1
	for(a in 1:32) {
	for(b in 1:a) {
	cat(x, sep = "\t ")
	x<-x+1
	if(x>500)
	stop("klaar")
	}
	cat("\n")

	}
	
	#A2.4
	cat("\\I say: \" Escaping stuff in great.\"\\")
	
	#A2.5
Diamant<-function(size){
		cat(rep(" ",3), rep("#", (size-6)),"\n")
		cat(" ", rep("#", (size-2)),"\n")
	for(s in 1:(size/5)){
	  cat(rep("#", size), "\n")
	}
		for(x in 1:size){
			y<-NULL
			y=size-2*x
			cat(rep(" ", x),rep("#", y), rep(" ", x), "\n")
		}
}
	