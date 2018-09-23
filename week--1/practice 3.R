#給定四組資料
person.name <- c("Jiyuian", "Shawnroom", "Bigmoumou")
person.sex <- c("F", "M", "M")
person.id <- c("jiyuian520", "shawnn520", "moumou123")
person.days <- c(201, 37, 99)
#形成表格
df=data.frame(person.name,person.sex,person.id,person.days)
#擷取資訊
str(df)
summary(df)
df
df[1]
df[2]
df[3]
df[4]
df[2, 3]
df[1,3]
df$person.id
order.day=order(df$person.days)
df[order.day]
spirit.520 <-grepl("520",df$person.id)
df[spirit.520,]

