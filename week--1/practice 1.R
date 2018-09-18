my.height.cm <-172.1
my.weight.kg <-56.3
BMI =(my.weight.kg/(my.height.cm)^2)*10000
print("my BMI is")
print(BMI)

if(BMI<18.5){
  message("過輕");
}else if(BMI<24){
  message("正常");
}else if(BMI<27){
  message("輕度肥胖")
}else if(BMI<30){
  message("中度肥胖")
}else {
  message("重度肥胖")
}