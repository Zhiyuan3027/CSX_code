#形成答案
answer=sample(0:9, size=4)
print("輸入您想猜的4個相異數字，列如:1 6 3 2")
times=0
repeat{
  times=times+1
  repeat{
    guess=scan(n=4)
    a.tf=guess==answer
    a=sum(as.numeric(a.tf))
    
    b.tf=rep(guess,4)==rep(answer,each=4)
    b=sum(as.numeric(b.tf))
    
    message(a,"A",b,"B")
   
    if(a==4)
      message("你總共試了",times,"次")
    break
  }
}