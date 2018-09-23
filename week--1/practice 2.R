#define csn(course.student.number)
csn <- c(1:30)

allstudent <- length(csn)
#get the grade data 
csg<-sample(x=c(55:100),size=allstudent)

names(csg) <-(csn)
#find mean max min 
csg.mean=mean(csg)
csg.max=max(csg)
csg.min=min(csg)
csg.over.80=csg>=80
csg.under.80=csg<80


print(paste("痁计", allstudent))
print(paste("痁キА", csg.mean))
print(paste("痁程蔼", csg.max))
print(paste("痁程", csg.min))

print(paste("蔼80だ计",length (allstudent[csg.over.80])))
X=names(csg[csg.over.80])
print(paste("蔼80だ畒腹",list(X)))      

