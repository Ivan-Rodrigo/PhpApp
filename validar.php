<?php
include 'conexion.php';
$nombre=$_POST['nombre'];
$contrasena=$_POST['contrasena'];

//$nombre="Hola";
//$contrasena="123";

$sentencia=$conexion->prepare("SELECT * FROM usu WHERE nombre=? AND contrasena=?");
$sentencia->bind_param('ss',$nombre,$contrasena);
$sentencia->execute();

$resultado = $sentencia->get_result();
if ($fila = $resultado->fetch_assoc()) {
         echo json_encode($fila,JSON_UNESCAPED_UNICODE);     
}
$sentencia->close();
$conexion->close();
?>