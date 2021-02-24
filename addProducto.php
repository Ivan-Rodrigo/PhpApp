<?php
include 'conectadb.php';
$id_categoria=$_POST['id_categoria'];
$codigo=$_POST['codigo'];
$descripcion=$_POST['descripcion'];
$imagen=$_POST['imagen'];
$stock=$_POST['stock'];
$precio_compra=$_POST['precio_compra'];
$precio_venta=$_POST['precio_venta'];
$ventas=$_POST['ventas'];
$fecha=$_POST['fecha'];





$con = conectar();

$sql ="INSERT INTO productos (id_categoria,codigo,descripcion,imagen,stock,precio_compra,precio_venta,ventas,fecha) 
VALUES ($id_categoria,'$codigo','$descripcion','$imagen',$stock,'$precio_compra','$precio_venta',$ventas,'$fecha')";
$result = mysqli_query($con,$sql);

if($result){
    echo "datos inser";
    echo $result;
}
else{
    echo "datos no insert";
}
?>