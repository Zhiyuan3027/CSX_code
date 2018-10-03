library("ggplot2")
library("ggmap")
library("maps")
library("mapproj")

taiwan <- get_googlemap(center= c(lon=median(xml.df$Col7),lat=median(xml.df$Col8))
                        ,zoom = 14 , maptype = "satellite")
ggmap(taiwan)

library(XML)
url="C:/Users/j5534/Downloads/45daed3330c8be0e1174e2f17b961d0a_export.xml"
xml.doc=xmlParse(url)
xml.top=xmlRoot(xml.doc)
xml.df=xmlToDataFrame(xml.top)

xml.df$Col7=as.numeric(levels(xml.df$Col7))

xml.df$Col8=as.numeric(levels(xml.df$Col8))
hist(xml.df$Col8)
is.factor(xml.df$Col8)
str(xml.df)
