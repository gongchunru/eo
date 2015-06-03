function validate1(){
var zh_obj=document.getElementById("zhID");
var password_obj=document.getElementById("passwordID");
var checkcode_obj=document.getElementById("checkcodeID");
if(zh_obj.value==null||zh_obj.value==""){
window.alert("帐号不能为空！");
zh_obj.focus();
return false;
}else if(password_obj.value==null||password_obj.value==""){
window.alert("密码不能为空！");
password_obj.focus();
return false;
}else if(checkcode_obj.value==null||checkcode_obj.value==""){
window.alert("验证码不能为空！");
checkcode_obj.focus();
return false;
}else{
return true;
}
}

function validate2(){
var zh_obj=document.getElementById("zhID");
var password_obj=document.getElementById("passwordID");
var repassword_obj=document.getElementById("repasswordID");
var name_obj=document.getElementById("nameID");
var clas_obj=document.getElementById("clasID");
var email_obj=document.getElementById("emailID");
if(zh_obj.value==null||zh_obj.value==""){
window.alert("账号不能为空！");
zh_obj.focus();
return false;
}else if(password_obj.value==null||password_obj.value==""){
window.alert("密码不能为空！");
password_obj.focus();
return false;
}else if(password_obj.value.length<6||password_obj.value.length>10){
window.alert("密码少于6位或多于10位！");
password_obj.focus();
return false;
}else if(repassword_obj.value==null||repassword_obj.value==""){
window.alert("重复密码不能为空！");
repassword_obj.focus();
return false;
}else if(repassword_obj.value!=password_obj.value){
window.alert("前后两次输入密码不一致！");
password_obj.focus();
return false;
}else if(name_obj.value==null||name_obj.value==""){
window.alert("用户名不能为空！");
name_obj.focus();
return false;
}else if(clas_obj.value==null||clas_obj.value==""){
window.alert("班级不能为空！");
clas_obj.focus();
return false;
}else if(email_obj.value==""){
window.alert("E-mail不能为空！");
email_obj.focus();
return false;
}else if(IsNotEmail(email_obj.value)){
window.alert("您的E-mail不符合规范！");
email_obj.focus();
return false;
}else{
return true;
}
}

function IsNotEmail(item){
	var etext
	var elen
	var i
	var aa
	var uyear,umonth,uday
	etext=item;
	elen=etext.length;
	if (elen<5)
 		return true;
	i= etext.indexOf("@",0)
	if (i==0 || i==-1 || i==elen-1)
 		return true;
	else
 		{if (etext.indexOf("@",i+1)!=-1)
  			return true;}
		if (etext.indexOf("..",i+1)!=-1)
 		return true;
	i=etext.indexOf(".",0)
	if (i==0 || i==-1 || etext.charAt(elen-1)=='.')
 		return true;
	if ( etext.charAt(0)=='-' ||  etext.charAt(elen-1)=='-')
 		return true;
	if ( etext.charAt(0)=='_' ||  etext.charAt(elen-1)=='_')
 		return true;
	for (i=0;i<=elen-1;i++)
		{ aa=etext.charAt(i)
 		 if (!((aa=='.') || (aa=='@') || (aa=='-') ||(aa=='_') || (aa>='0' && aa<='9') || (aa>='a' && aa<='z') || (aa>='A' && aa<='Z')))
   			return true;
		}
	return false;
}

function validate3(){
var zh_obj=document.getElementById("zhID");
var password_obj=document.getElementById("passwordID");
var name_obj=document.getElementById("nameID");

if(zh_obj.value==null||zh_obj.value==""){
window.alert("账号不能为空！");
zh_obj.focus();
return false;
}else if(password_obj.value==null||password_obj.value==""){
window.alert("密码不能为空！");
password_obj.focus();
return false;
}else if(name_obj.value==null||name_obj.value==""){
window.alert("姓名不能为空！");
name_obj.focus();
return false;
}else{
return true;
}
}

function validate4(password){
var oldPassword_obj=document.getElementById("oldPasswordID");
var newPassword_obj=document.getElementById("newPasswordID");
var renewPassword_obj=document.getElementById("renewPasswordID");
if(oldPassword_obj.value==null||oldPassword_obj.value==""){
window.alert("旧密码不能为空！");
oldPassword_obj.focus();
return false;
}else if(oldPassword_obj.value!=password){
window.alert("旧密码不正确!");
oldPassword_obj.focus();
return false;
}else if(newPassword_obj.value==null||newPassword_obj.value==""){
window.alert("新密码不能为空！");
newPassword_obj.focus();
return false;
}else if(newPassword_obj.value.length<6||newPassword_obj.value.length>10){
window.alert("新密码少于6位或多于10位！");
newPassword_obj.focus();
return false;
}else if(renewPassword_obj.value==null||renewPassword_obj.value==""){
window.alert("重复新密码不能为空！");
renewPassword_obj.focus();
return false;
}else if(renewPassword_obj.value!=newPassword_obj.value){
window.alert("前后两次输入密码不一致！");
newPassword_obj.focus();
return false;
}else{
return true;
}
}

function validate5(){
var newName_obj=document.getElementById("newNameID");
if(newName_obj.value==null||newName_obj.value==""){
window.alert("新姓名不能为空！");
newName_obj.focus();
return false;
}else{
return true;
}
}

var ck=/^([1-9]{1,1})([0-9]{0,})+$/;
function validate6(){
var name_obj=document.getElementById("nameID");
var totalTime_obj=document.getElementById("totalTimeID");
if(name_obj.value==null||name_obj.value==""){
window.alert("试卷名不能为空！");
name_obj.focus();
return false;
}else if(totalTime_obj.value==null||totalTime_obj.value==""){
window.alert("考试总时长不能为空！");
totalTime_obj.focus();
return false;
}else if(!(ck.test(totalTime_obj.value))){
window.alert("考试总时长必须为正整数！");
totalTime_obj.focus();
return false;
}else{
return true;
}
}

function validate7(){
var content_obj=document.getElementById("contentID");
if(content_obj.value==null||content_obj.value==""){
window.alert("题目不能为空！");
content_obj.focus();
return false;
}else{
return true;
}
}

function validate8(){
var optionA_obj=document.getElementById("optionAID");
var optionB_obj=document.getElementById("optionBID");
var optionC_obj=document.getElementById("optionCID");
var optionD_obj=document.getElementById("optionDID");
var answerA_obj=document.getElementById("answerAID");
var answerB_obj=document.getElementById("answerBID");
var answerC_obj=document.getElementById("answerCID");
var answerD_obj=document.getElementById("answerDID");	
if(optionA_obj.value==null||optionA_obj.value==""){
window.alert("选项A不能为空！");
optionA_obj.focus();
return false;
}else if(optionB_obj.value==null||optionB_obj.value==""){
window.alert("选项B不能为空！");
optionB_obj.focus();
return false;
}else if(optionC_obj.value==null||optionC_obj.value==""){
window.alert("选项C不能为空！");
optionC_obj.focus();
return false;
}else if(optionD_obj.value==null||optionD_obj.value==""){
window.alert("选项D不能为空！");
optionD_obj.focus();
return false;
}else if(!(answerA_obj.checked)&!(answerB_obj.checked)&!(answerC_obj.checked)&!(answerD_obj.checked)){
window.alert("答案不能为空！");
return false;
}else{
return true;
}
}