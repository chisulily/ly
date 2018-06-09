//js/details.js
$(function(){
	if (location.search.indexOf("did")!=-1){
		var did=location.search.split("=")[1];
		$.ajax({
			type:"get",
			url:"data/getDetailByPid.php",
			data:"did="+did,
			dataType:"json",
			success:function(output){
				console.log(output);
				var {product,tastes}=output;
				var {title,details,price,taste}=product;
				document.querySelector("#show-details>h1").innerHTML=title;
				document.querySelector("#show-details>h3").innerHTML=details;
				document.querySelector("#show-details>div.price>div.stu-price>span"
				).innerHTML="￥"+parseFloat(price).toFixed(2);

			//从数据库获取口味
				var html="";
				for(var {did, taste} of tastes){
					html+=`<a href="menu_details.html?did=${did}" class=${did===product.did?"active":""}>${taste}</a>`
			}
			document.querySelector("#show-details>div.taste>div")
				.innerHTML=html;
			}	
			//从数据库获取小中大图片
			/*var html="";
				for (var{sm,md,lg}of pics ){
					html+=`<li class="i1"><img src="${sm}" data-md="${md}" data-lg="${lg}"></li>`;
				}
				var LIWIDTH=62;
				var ulPics=document.getElementById("icon_list");
				ulPics.innerHTML=html;
				ulPics.style.width=LIWIDTH*pics.length+"px";
				var mImg=document.getElementById("mImg"),
					lgDiv=document.getElementById("largeDiv");
				mImg.src=pics[0].md;
				lgDiv.style.backgroundImage="url("+pics[0].lg+")";	*/
			//小图片左右切换
			/*	if (pics.length<=5)
				document.querySelector("#preview>h1>a.forward").className+="disabeld";
			var moved=0,offset=20;
			var aForward=document.querySelector("#preview>h1>a.forward");
			var aBackward=document.querySelector("#preview>h1>a.backward");
			aForward.onclick=function(e){
				e.preventDefault();
				var a=this;
				if(a.className.indexOf("disabled")==-1){
					moved++;
					ulPics.style.left=-moved*LIWIDTH+offset+"px";
					aBackward.className="backward";
					if (pics.length-moved===5) 
						a.className+="disabled";
				}
			}
			aBackward.onclick=function(e){
				e.preventDefault();
				var a=this;
				if(a.className.indexOf("disabled")==-1){
					moved--;
					ulPics.style.left=-moved*LIWIDTH+offset+"px";
					aForward.className="forward";
					if (moved===0) 
						a.className+="disabled";
				}
			}*/
		
		})
	}
});
$("[data-action='detail-cancel']").click(function (e) {
    e.preventDefault();
    $(".detail-jumbotron").hide();
});
