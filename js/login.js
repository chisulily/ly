/*Created by web-01 on 2018/5/16.*/
//js/login.js
// 功能：完成登录判断
// 1.获取登录按钮_#btn
// 2.为按钮绑定点击事件
$("#btn").click(function(e){
   // 3.阻止事件默认行为
    e.preventDefault();
    // 4.获取用户输入值 用户名 密码 验证码
    var uname=$("#uname").val();
    var upwd=$("#upwd").val();
    // 5.创建正则表达式验证用户输入 用户名 密码
    var reg=/^[a-zA-Z0-9]{3,12}$/i;
    // 6.如果验证出错显示错误信息
    if (!reg.test(uname)){
        alert("用户名格式不正确");
        return;
    }
    if (!reg.test(upwd)){
        alert("用户密码格式不正确");
        return;
    }
    // 7.发送ajax data/login.php
    $.ajax({
        type:"get",
        url:"data/login.php",
        data:{uname:uname,upwd:upwd},
		// 8.获取返回结果
        success:function(data){
            //data：PHP返回结果 json 字符串->jQuery->js object对象
            //data:{"code":1,"msg":"登录成功"}
		   // code>0 登录成功 跳转index.html页面
            if(data.code>0){
                alert(data.msg);
                location.href="index.html";
			// 9.获取返回结果错误 提示错误信息
            }else{    
                alert(data.msg);
				location.href="login.html";
            }
        },
        error:function(){
            alert("网络故障请检查！")
            /*1.请求地址错误，404；2.sql语句错误；3.json拼写错误；4.PHP语法错误*/
        }
    });
 });
$(function(){
    $("#logintd>:button").click(function(){
        var $btn=$(this);
        $.ajax({
            type:"post",
            url:"data/login.php",
            data:$btn.parent().serialize(),
            success:function(msg){
				console.log(msg);//不正确
                    //?back=http://xxx/products.html?kw=i5
                    var i=location.search.indexOf("=");
                    location.href=location.search.slice(i+1);
            }
        })
    })
});


