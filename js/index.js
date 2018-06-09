//判断当前会话中是否存储了用户名
	var n =sessionStorage.getItem("uname");
	if(n){
		var welcome =document.getElementById("welcome");
		welcome.innerHTML=`欢迎回来${n} <a href="logout.html">退出</a>`;
	}
//轮播图
var speed=10; //数字越大速度越慢
var tab=document.getElementById("demo");
var tab1=document.getElementById("demo1");
var tab2=document.getElementById("demo2");
tab2.innerHTML=tab1.innerHTML;
function Marquee(){
	if(tab2.offsetWidth-tab.scrollLeft<=0)
		tab.scrollLeft-=tab1.offsetWidth
	else{
		tab.scrollLeft++;
	}
}
var MyMar=setInterval(Marquee,speed);
tab.onmouseover=function() {
	clearInterval(MyMar)
};
tab.onmouseout=function() {
	MyMar=setInterval(Marquee,speed)
};