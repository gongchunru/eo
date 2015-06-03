function getCurrTime(){
window.setInterval("updateTime()",1000);//每隔一秒钟执行一次updateTime()
}
function updateTime(){
var now=new Date();
var msg=now.toLocaleString();
var div_obj=document.getElementById("clock");
//将值设置给div_obj对象
div_obj.innerHTML=msg;
}