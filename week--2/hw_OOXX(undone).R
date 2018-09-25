game=matrix(1:9,nrow = 3)
game
i=1
repeat{
  
  keyin=scan(n=1,quiet=T)
#   if(number>10|number<0|number%%1!=0)
 #     print("wrong message")
  # else
      a=(keyin-1)%/%3+1
      b=((keyin-1)%%3)+1
      paste("r",i,sep="")=sub(game[b,a],replacement="p1",game) 
      print(paste("r",i,sep=""))}