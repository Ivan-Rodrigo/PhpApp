<?php
include 'conectadb.php';


$con = conectar();
$result=array();
$result['datos']=array();

$sql ="SELECT * FROM productos";
$mostar = mysqli_query($con,$sql);

while($row=mysqli_fetch_array($mostar)){
    $index['id']=$row['0'];
     $index['id_categoria']=$row['1'];
      $index['codigo']=$row['2'];
       $index['descripcion']=$row['3'];
        $index['imagen']=$row['4'];
         $index['stock']=$row['5'];
          $index['precio_compa']=$row['6'];
           $index['precio_venta']=$row['7'];
            $index['ventas']=$row['8'];
             $index['fecha']=$row['9'];
          array_push($result['datos'],$index);
}
$result["succes"]="1";
echo json_encode($result);
mysqli_close($con);

?>