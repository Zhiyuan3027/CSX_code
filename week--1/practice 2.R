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


print(paste("全班人數", allstudent))
print(paste("全班平均", csg.mean))
print(paste("全班最高", csg.max))
print(paste("全班最低", csg.min))

print(paste("高於80分的人數",length (allstudent[csg.over.80])))
X=names(csg[csg.over.80])
print(paste("高於80分的座號",list(X)))      

