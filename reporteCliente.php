<?php
include 'conectadb.php';


$con = conectar();
$result=array();
$result['datos']=array();

$sql ="SELECT * FROM clientes";
$mostar = mysqli_query($con,$sql);

while($row=mysqli_fetch_array($mostar)){
    $index['id']=$row['0'];
     $index['nombre']=$row['1'];
      $index['documento']=$row['2'];
       $index['email']=$row['3'];
        $index['telefono']=$row['4'];
         $index['direccion']=$row['5'];
          $index['fecha_nacimiento']=$row['6'];
           $index['compras']=$row['7'];
            $index['ultima_compra']=$row['8'];
             $index['fecha']=$row['9'];
          array_push($result['datos'],$index);
}
$result["succes"]="1";
echo json_encode($result);
mysqli_close($con);

?>