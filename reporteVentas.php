<?php
include 'conectadb.php';


$con = conectar();
$result=array();
$result['datos']=array();

$sql ="SELECT * FROM ventas";
$mostar = mysqli_query($con,$sql);

while($row=mysqli_fetch_array($mostar)){
    $index['id']=$row['0'];
     $index['codigo']=$row['1'];
      $index['id_cliente']=$row['2'];
       $index['id_vendedor']=$row['3'];
        $index['productos']=$row['4'];
         $index['impuesto']=$row['5'];
          $index['neto']=$row['6'];
           $index['total']=$row['7'];
            $index['metodo_pago']=$row['8'];
            $index['fecha']=$row['9'];
          array_push($result['datos'],$index);
}
$result["succes"]="1";
echo json_encode($result);
mysqli_close($con);

?>