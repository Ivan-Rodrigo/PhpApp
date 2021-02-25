<?php
include 'conectadb.php';
$nombre=$_POST['nombre'];
$documento=$_POST['documento'];
$email=$_POST['email'];
$telefono=$_POST['telefono'];
$direccion=$_POST['direccion'];
$fecha_nacimiento=$_POST['fecha_nacimiento'];
//$ventas=$_POST['ventas'];

$id=$_POST['id'];





$con = conectar();

$sql ="UPDATE clientes SET nombre='$nombre',documento=$documento,email='$email',telefono='$telefono',direccion='$direccion',fecha_nacimiento='$fecha_nacimiento' where id=$id ";
$result = mysqli_query($con,$sql);

if($result){
    echo "Datos Actualizados Correctamente";
    
}
else{
    echo "datos no update";
}
?>