/**
 * Created by web-01 on 2018/5/19.
 */ 
/*实现“省”和“市”的级联下拉列表*/
var cities=[
    [
        {"name":'东城区',"value":101},
        {"name":'西城区',"value":102},
        {"name":'朝阳区',"value":103},
        {"name":'丰台区',"value":104},
        {"name":'海淀区',"value":105},
        {"name":'顺义区',"value":106},
        {"name":'通州区',"value":107},
        {"name":'大兴区',"value":108}
    ],
    [
        {"name":'浦东区',"value":201},
        {"name":'闵行区',"value":202},
        {"name":'静安区',"value":203},
        {"name":'嘉定区',"value":204},
        {"name":'徐汇区',"value":205},
        {"name":'虹口区',"value":206},
        {"name":'奉贤区',"value":207},
        {"name":'浦东新区',"value":208}
    ],
    [
        {"name":'越秀',"value":301},
        {"name":'海珠',"value":302},
        {"name":'荔湾',"value":303},
        {"name":'天河',"value":304},
        {"name":'白云',"value":305},
        {"name":'黄埔',"value":305},
        {"name":'南沙',"value":305},
        {"name":'番禺',"value":305}
    ],
	[
        {"name":'福田区',"value":401},
        {"name":'罗湖区',"value":402},
        {"name":'南山区',"value":403},
        {"name":'盐田区',"value":404},
        {"name":'龙岗区',"value":405},
        {"name":'坪山区',"value":405},
        {"name":'龙华区',"value":405},
        {"name":'光明区',"value":405},
        {"name":'宝安',"value":405},
        {"name":'大鹏新区',"value":405}
    ]
];

//查找触发事件的元素
var selProvs=document.getElementsByName("provs")[0];
//绑定事件
selProvs.onchange=function(){
        //this->selProvs
        var i=this.selectedIndex;//找到当前的选中项
        //查找要修改的元素
        var selCts=document.getElementsByName("cities")[0];
        //selCts.innerHTML="";
        selCts.length=0;
        if (i>0){//修改元素
            var frag=document.createDocumentFragment();
            frag.appendChild(new Option("-请选择-"));
            for (var {name,value} of cities[i] ){
                frag.appendChild(new Option(name,value));
            }
            selCts.appendChild(frag);
            selCts.className="";
            //修改元素
        }else{
            selCts.className="hide";
        }
    };

/*******注册判断********/
$(function(){
	$("#btn").click(function(){
		var uname = $("#uname").val();
		var upwd = $("#upwd").val();
		var email = $("#email").val();
		var phone =$("#phone").val();
		var city = $("#city").val();
		$.ajax({
			type:"get",
			url:"data/register.php",
			data:{uname:uname,upwd:upwd,email:email,
			phone:phone,city:city},
			success:function(data){
				if(data.code>0){
					alert("注册成功");
					location.href="login.html";
				}else if(data.code>-2){
					alert("注册失败,请重试");
					location.href="register.html";
				}else{
					alert("注册失败,此用户名已存在");
					location.href="register.html";
				}
			}
		});
	});
});