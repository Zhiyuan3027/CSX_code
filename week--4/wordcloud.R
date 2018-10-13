library(xml2)
library(rvest)
library(magrittr)
library("jiebaRD")
library("jiebaR")

Sys.setlocale(category = "LC_ALL", locale = "cht")
setwd("~/R/CSX_RProject/week--4/data")
for(i in 2144:2164){
  url=paste("https://www.ptt.cc/bbs/Hearthstone/index",i,sep="")
  title=read_html(paste(url,".html",sep="")) %>%
  html_nodes(".title a") %>%
  html_text()%>%  
  iconv("UTF-8")

  cc = worker()
  hs<-table(cc[title])
  hs=data.frame(hs)
  colnames(hs) <- c("word",i)
  write.table(hs,file=paste(i,".txt",sep=""),row.names = T,col.names = T)}

j=2143
repeat{
  j=j+1
  file=(paste(j,".txt",sep=""))
  file_path=paste("~/R/CSX_RProject/week--4/data/",file,sep="")
  Freq.tb=read.table(file_path,header =T, stringsAsFactors = F,sep="")
  
  if(j==2144){
    merge_df=Freq.tb
  }else if(j!=2144){
   merge_df=merge(merge_df,Freq.tb,all.x= T,all.y=T)
  }else if(j>2164)
    break
}

k=1
repeat{
na<- is.na(merge_df[,k])
merge_df[na,k]=0
 k=k+1
}
Freq_sum=rowSums(merge_df[,2:22])
word_df=merge_df$word
finaldata=data.frame(word_df,Freq_sum)
finaldata$Freq_sum=as.integer(finaldata$Freq_sum)

library(wordcloud)
wordcloud(finaldata$word_df, finaldata$Freq_sum, random.order = F, ordered.colors = F)

