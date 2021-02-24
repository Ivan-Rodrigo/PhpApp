<?php
include 'conectadb.php';
$id_categoria=$_POST['id_categoria'];
$codigo=$_POST['codigo'];
$descripcion=$_POST['descripcion'];

$stock=$_POST['stock'];
$precio_compra=$_POST['precio_compra'];
$precio_venta=$_POST['precio_venta'];
//$ventas=$_POST['ventas'];

$id=$_POST['id'];





$con = conectar();

$sql ="UPDATE productos SET id_categoria=$id_categoria,codigo='$codigo',descripcion='$descripcion',stock=$stock,precio_compra='$precio_compra',precio_venta='$precio_venta' where id=$id ";
$result = mysqli_query($con,$sql);

if($result){
    echo "Datos Actualizados Correctamente";
    
}
else{
    echo "datos no update";
}
?>