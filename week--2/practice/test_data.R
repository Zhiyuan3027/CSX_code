#prepare
library(rvest)
url="https://github.com/Zhiyuan3027/107-1RSampleCode/blob/master/week_2/course_2/test_data.csv#L11"

song.name=read_html(url)%>%
html_nodes("td , th")%>%
html_text()
song.name

