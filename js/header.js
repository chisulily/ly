(function(){
	$("#header").load("header.html",function(){
		var link=document.createElement("link");
		link.rel="stylesheet";
		link.href="css/header.css";
		document.head.appendChild(link);
		var btnSearch=document.querySelector(
			"#top-input>[data-trigger=search]"
		);
	});
    //隐藏登录，显示欢迎
    //异步请求判断登录状态
    $.ajax({
        type:"get",
        url:"data/islogin.php",
        dataType:"json",
        success:function(data){
        	 console.log(data);
            if(data.ok==0){
                $("#loginList").show().next().hide();
            }else{
                 var {uname}=data;
                 console.log(data);
                $("#loginList").hide().next().show().find("#uname").html(uname);
            }
        }
    });
    //登录按钮点击事件
    $("#btnLogin").click(function(e){
        e.preventDefault();
        location.href="login.html?back="+location.href;
    });
    //注销按钮点击事件
    $("#btnSignout").click(function(e){
        e.preventDefault();
        $.ajax({
            type:"get",
            url:"data/signout.php",
            success:function(){
                location.reload(true);
            }
        })
    });
    //固定导航条
    $(window).scroll(function(){
        var scrollTop=$(window).scrollTop();
        if (scrollTop>=300){
            $(".header-top").addClass("fixed_nav");
            $(".nav").css("height",99);
        }else
            $(".header-top").removeClass("fixed_nav");
    });
})();

