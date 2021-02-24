<?php
include 'conectadb.php';
$nombre=$_POST['nombre'];
$documento=$_POST['documento'];
$email=$_POST['email'];
$telefono=$_POST['telefono'];
$direccion=$_POST['direccion'];
$fecha_nacimiento=$_POST['fecha_nacimiento'];
$compras=$_POST['compras'];
$ultima_compra=$_POST['ultima_compra'];
$fecha=$_POST['fecha'];

$con = conectar();

$sql ="INSERT INTO clientes (nombre,documento,email,telefono,direccion,fecha_nacimiento,compras,ultima_compra,fecha) 
VALUES ('$nombre',$documento,'$email','$telefono','$direccion','$fecha_nacimiento',$compras,'$ultima_compra','$fecha')";
$result = mysqli_query($con,$sql);

if($result){
    echo "Datos Agregados Del Cliente Correctamente";
}
else{
    echo "datos no insert";
}
?>