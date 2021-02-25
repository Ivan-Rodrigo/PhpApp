<?php
include 'conectadb.php';
$id=$_POST['id'];

$con = conectar();

$sql ="DELETE FROM clientes WHERE id=$id";
$result = mysqli_query($con,$sql);

if($result){
    echo "Dato Eliminado Correctamente :)";
    
}
else{
    echo "datos no Eliminados :(";
}