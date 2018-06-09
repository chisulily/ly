<?php
//data/products/getProductById.php
require_once("./init.php");
@$did=$_REQUEST["did"];
$output=[
	"product"=>[],
	"tastes"=>[]
];
if($did!=null){
	$sql="SELECT * FROM `br_menu_details` where did=$did";
	$result=mysqli_query($conn,$sql);
	$output["product"]=mysqli_fetch_all($result,1)[0];

	$did=$output["product"]["did"];
	$sql="SELECT did,taste FROM `br_menu_details` where did=$did";
	$result=mysqli_query($conn,$sql);
	$output["tastes"]=mysqli_fetch_all($result,1);
}
echo json_encode($output);