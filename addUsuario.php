<?php
include 'conectadb.php';
$nombre=$_POST['usuario'];
$contrasena=$_POST['password'];
$correo=$_POST['correo'];

$con = conectar();

$sql ="INSERT INTO usu (nombre,contrasena,correo) VALUES ('$nombre','$contrasena','$correo')";
$result = mysqli_query($con,$sql);

if($result){
    echo "datos inser";
}
else{
    echo "datos no insert";
}
?>