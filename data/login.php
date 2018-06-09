<?php
//1.设置响应头格式为json
 header("Content-Type:application/json;charset=utf-8");
//2.连接数据库
require_once("init.php");
//3.获取参数 uname upwd
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];
//4.创建正则表达式验证用户输入uname upwd
$reg='/^[a-zA-Z0-9]{3,12}$/';
//5.如果用户输入格式不正确提示错误信息
@$rs=preg_match($reg,$uname);
if(!$rs){
    die('{"code":-1,"msg":"用户名格式不正确"}');
}
@$rs=preg_match($reg,$upwd);
if(!$rs){
    die('{"code":-1,"msg":"密码格式不正确"}');
}
//6.创建sql语句查询该用户是否存在
$sql="SELECT uid FROM br_user WHERE uname='$uname' AND upwd='$upwd'";
$result=mysqli_query($conn,$sql);
if(mysqli_error($conn)){
    echo mysqli_error($conn);
}
//7.发送sql语句并且获取返回结果
$row=mysqli_fetch_row($result);
//8.输出登录结果
if ($row===null){
    session_start();
	$_SESSION["uid"]=$row[0];
    echo '{"code":-1,"msg":"用户名或密码有误，请重试"}';
}else{
    echo '{"code":1,"msg":"登录成功,3秒后返回首页！"}';
}













