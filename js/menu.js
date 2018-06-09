//js/menu.js
$(function(){
	function loadPage(pno=0){
	var kw=location.search.split("=")[1];
	//加载菜单列表	
	$.ajax({
		type:"get",
		url:"data/getProductById.php",
		dataType:"json",
		success:function(output){
			console.log(output);
			var menu = $("#ulMenu");
			var pages = $("#pages");
			var html="";
			var {count,pageCount,pageNo,pageSize,products}=output;
			for(var item of products){
				var {did,title,details,pic}=item;
				//console.log(did);
				html+=`<li>
						<div class="limenu">
							<a href="${did}" class="b-link-stripe">
								<img src="${pic}" alt="" />
								<div class="ctxt">
									<h5 class="title">${title}</h5>
									<span>${details}</span>									
									<a href="${did}" id="libutton">在线预订</a>									
								</div>
							</a>
						</div>
					</li>`;
			}
			menu.html(html);
			//拼接字符串创建页码
			var html=
				`<a href="javascript:;" class="previous">上一页</a>`;
				for(var i=0;i<pageCount;i++){
					if(i===pageNo)
						html+=`<a href="javascript:;" class="current">${i+1}</a>`
					else
						html+=`<a href="javascript:;">${i+1}</a>`
				}
				html+=`<a href="javascript:;" class="next">下一页</a>`				
				pages.html(html);
				var aPrev=$(".previous"),aNext=$(".next");
				if(pageNo===0) aPrev.className+=" disabled";
				if(pageNo===pageCount-1) aNext.className+=" disabled";

		}		
	});
	}
	loadPage();
	//分页按钮
	pages.onclick=function(e){
		e.preventDefault();
		var tar=e.target;
		if(tar.nodeName==="A"
			&&tar.className.indexOf("disabled")==-1
			&&tar.className!=="current"){
			if(tar.className.indexOf("previous")!=-1){
				var curra=$("#pages>a.current");
				var pno=curra.innerHTML-2;
			}else if(tar.className.indexOf("next")!=-1){
				var curra=$("#pages>a.current");
				var pno=parseInt(curra.innerHTML);
			}else{
				var pno=tar.innerHTML-1;
			}
			loadPage(pno);
		}
	}

	//菜单按钮点击事件
    //获取商品列表中在线预订按钮，绑定点击事件
	$("#ulMenu").on("click","#libutton",function(e){
		e.preventDefault();
		var did = parseInt($(this).attr("href"));
		console.log(did);
		var reg=/^[0-9]{1,}$/;
		if(!reg.test(did)){
			alert("商品编号格式不正确，请重试");
			return;
		}
		location.href="menu_details.html?did="+did;
    });
});













/*var html="";
	if(pageNo-2>0){
		html+=`<li><a href="#">${pageNo-2}</a></li>`;
	}
	if(pageNo-1>0){
		html+=`<li><a href="#">${pageNo-1}</a></li>`;
	}
	html+=`<li class="active"><a href="#">${pageNo}</a></li>`;
	if(pageNo+1<=pageCount){
		html+=`<li><a href="#">${pageNo+1}</a></li>`;
	}
	if(pageNo+2<=pageCount){
		html+=`<li><a href="#">${pageNo+2}</a></li>`;
	}
	pages.html(html);*/