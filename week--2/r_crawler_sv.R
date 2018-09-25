#prepare
library(rvest)
url="https://streetvoice.com/music/charts/0/"
#get the song name
song.name=read_html(url)%>%
html_nodes("h4 a")%>%
html_text()
#get the singer(usege of {nth:child(n)} )
singer=read_html(url)%>%
html_nodes("td:nth-child(3)")%>%
html_text()
#get the lenght of the music
long=read_html(url)%>%
html_nodes("td:nth-child(4)")%>%
html_text()
#get the launch date
date=read_html(url)%>%
html_nodes("td:nth-child(5)")%>%
html_text()
#make all information into df
df=data.frame(song.name,singer,long,date)

