<?php
include 'conectadb.php';


$con = conectar();
$result=array();
$result['datos']=array();

$sql ="SELECT * FROM usuarios";
$mostar = mysqli_query($con,$sql);

while($row=mysqli_fetch_array($mostar)){
    $index['id']=$row['0'];
     $index['nombre']=$row['1'];
      $index['usuario']=$row['2'];
       $index['password']=$row['3'];
        $index['perfil']=$row['4'];
         $index['foto']=$row['5'];
          $index['estado']=$row['6'];
           $index['ultimo_login']=$row['7'];
            $index['fecha']=$row['8'];
          array_push($result['datos'],$index);
}
$result["succes"]="1";
echo json_encode($result);
mysqli_close($con);

?>