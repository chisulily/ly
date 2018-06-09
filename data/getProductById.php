<?php
//data/products/getProductById.php
/*require_once("./init.php");
$sql="SELECT * FROM `br_menu_details`";
$result=mysqli_query($conn,$sql);
$output=mysqli_fetch_all($result,1);
echo json_encode($output);*/

//data/getProductById.php
require_once("init.php");
$output=[
	"count"=>0,//总数
	"pageSize"=>9,//每页9个
	"pageCount"=>0,//总页数=ceil(count/pageSize)
	"pageNo"=>0,//当前第几页
	"products"=>[]//商品列表
];
@$kw=$_REQUEST["kw"];
@$pno=$_REQUEST["pno"];
if(!$kw){    $kw ="";    }
if(!$pno){       $pno = 0;    }

$kws=explode(" ",$kw);
for($i=0;$i<count($kws);$i++){
    $kws[$i]=" title like '%".$kws[$i]."%' ";
}
$where=implode(" and ",$kws);

$sql="select * from br_menu_details where $where";
$result=mysqli_query($conn,$sql);
$count=count(mysqli_fetch_all($result,1));
$pageCount=ceil($count/$output["pageSize"]);
$output["count"]=$count;
$output["pageCount"]=$pageCount;

$sql="select * from br_menu_details ";
$sql.=" limit ".$pno*$output["pageSize"].",".$output["pageSize"];
$output["pageNo"]=$pno;
$result=mysqli_query($conn,$sql);
$output["products"]=mysqli_fetch_all($result,1);

echo json_encode($output);
















