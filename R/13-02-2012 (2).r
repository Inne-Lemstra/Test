#Dag 1
#(c) Inne
# Oefenen met R

1:10
seq(1:10)
seq(1,100,8)
cat("ind",1:10,sep=":")
paste("ind",1:10,sep="")
paste(letters[1:10],1:10,sep=",")
sqrt((1+5)/4)
sqrt((6+10)/4)
12/2 == 6
11/6 == 6
1:10 < 7
1:10 <= 7
1:10*4
1:10*1:10
matrix(1,3,5)
matrix(3,3,5)
matrix(1:15,3,5)
matrix(15:1,3,5)
matrix(1,3,5)*4

x <- runif(1)*300
if(x > 100){
  cat("x is groter dan 100\n")
}else{
  cat("x is kleiner dan 100 (of gelijk)\n")
}

snp <- matrix(runif(1000),100,10)
r <- 1
while(mean(snp[r,]) >= 0.1){
  cat("Rij",r,"Gemiddelde:",mean(snp[r,]),"\n")
  if(r==100) stop("We stoppen voordat we een error krijgen")
  r<-r+1
}

for(r in 1:nrow(snp)){
  cat("Rij",r,"Gemiddelde:",mean(snp[r,]),"\n")
}

for(x in 1:100){
	if(x<42) cat("don't panic\n")
	if(x==42) cat("yes 42\n")else if(x>42)(cat("do panic\n"))
	}
cat("\"\\") #print"\
cat("\"\\\\\"\\\"") #print "\\"\"
#Assigment 1.0
#A1.0
x<- runif(1)*100
if(x>0 & x<10) cat("True") else cat("error")
rm = x

#A1.1
total <- 0
waarden <- 1:1000
for(x in waarden){
  cat(x,"\n")
  total <- total + x
}
cat("Total:",total)

cat("VarTotal",sum(1:1000))

total<- 0
w <- 1
while(w <= 1000){
  total <- total+w
  cat(w,total,"\n")
  w <- w + 1
}

for(x in 1:12) {
  if(x<10){
    spaties <- "  "
  }else{
    spaties <- " "
  }
  cat(x,paste(rep("#",x),collapse=""),"\n",sep=spaties)
}
	


