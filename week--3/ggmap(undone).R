install.packages("ggmap", type = "source") 
library("ggplot2")
library("ggmap")
library("maps")
library("mapproj")

library("XML")
url="C:/Users/j5534/Downloads/45daed3330c8be0e1174e2f17b961d0a_export.xml"
xml.doc=xmlParse(url)
xml.top=xmlRoot(xml.doc)
xml.df=xmlToDataFrame(xml.top)

xml.df$Col7=as.numeric(levels(xml.df$Col7))
xml.df$Col8=as.character(xml.df$Col8)
xml.df$Col8=as.numeric(c(xml.df$Col8))
A=mean(xml.df$Col7)
B=mean(xml.df$Col8)

TaipeiMap=get_googlemap(center=c(lon=B,lat=A),
          zoom = 10,
          language = "zh-TW")
