<?php

function conectar(){
    $hostname='localhost';
    $database='va3';
    $username='root';
    $password='';

    $conexion= mysqli_connect($hostname,$username,$password,$database);
   // mysqli_select_db();
    return $conexion;
    
}
?>