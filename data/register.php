<?php
header("Content-Type:application/json;charset=utf-8");
/*连接数据库*/
require_once("init.php");

/*************************************用户名************************************/
$uname =$_REQUEST["uname"];
if($uname===""||$uname===null){
	die("用户名不能为空");
}
$reg = '/^[a-zA-Z0-9]{3,12}$/';
$rs = preg_match($reg,$uname);
if(!$rs){
  die('{"code":-1,"msg":"用户名格式不正确!"}');
}

/*************************************密码*******************************/
$upwd =$_REQUEST["upwd"];
if($upwd===""||$upwd===null){
	die("密码不能为空");
}
$regupwd = '/^[a-zA-Z0-9]{6,12}$/';
$rs = preg_match($regupwd,$upwd);
if(!$rs){
  die('{"code":-1,"msg":"密码格式不正确!"}');
}

/****************************************邮箱*******************************/
$email =$_REQUEST["email"];
if($email===""||$email===null){
	die("邮箱不能为空!");
}
$regemail = '/^[a-zA-Z0-9]+@[a-z0-9]+\.com&/';
$rs = preg_match($regemail,$email);
if(!rs){
	die('{"code":-1,"msg":"邮箱格式不正确"}');
}
/****************************************电话号码**************************/
$phone =$_REQUEST["phone"];
if($phone===""||$phone===null){
	die("电话号码不能为空!");
}
$regphone = '/^1[3-8][0-9]{8}$/';
$rs=preg_match($regphone,$phone);
if(!rs){
	die('{"code":-1,"msg":"电话号码格式不正确"}');
}

/****************************************所在城市**************************/
@$city =$_REQUEST["city"];
$sql="SELECT uname FROM br_user WHERE uname='$uname'";
$result= mysqli_query($conn,$sql);
$row=mysqli_fetch_row($result);
if($row==null){
	$sql="insert into br_user values(null,'$uname','$upwd','$email','$phone','$city')";
	$result= mysqli_query($conn,$sql);
	if($result==false){
	   echo '{"code":-1,"msg":"注册失败"}';
	}else{
	   echo '{"code":1,"msg":"注册成功"}';
	}
}else{
	echo '{"code":-2;"msg":"注册失败，此用户名已存在"}';
?>