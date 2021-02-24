<?php
include 'conectadb.php';
$id=$_POST['id'];






$con = conectar();

$sql ="DELETE FROM productos WHERE id=$id";
$result = mysqli_query($con,$sql);

if($result){
    echo "Dato Eliminado Correctamente :)";
    
}
else{
    echo "datos no insert";
}