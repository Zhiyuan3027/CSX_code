iris
dim(iris)
head(iris)
tail(iris)
str(iris)
summary(iris)

x=1
y=1
while(x!=10){
  while(y!=10){
    message(x,"*",y ,"=", x*y)
    y <- (y+1)
  } 
  y=1
  message("____________________________________")
  x <- (x+1)
}

for(x in 1:9){
  for(y in 1:9)
  message(x,"*",y ,"=", x*y)
  message("____________________________________")
}


repeat {
 (nums=sample(10:100,10))
 k= nums>=66&nums<=66
 skr=as.numeric(k)
  print(paste("偶數且大於50:",list(nums[nums>=50&nums%%2 ==0])))
 if (sum(skr==1))break
}
message("太66666666666了")


enter.the.year=2014
  if(enter.the.year%%4==0){
    message("閏年")
  } else {
     message("非閏年")
  }