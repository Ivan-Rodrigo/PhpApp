<?php
include 'conectadb.php';


$con = conectar();
$result=array();
$result['datos']=array();

$sql ="SELECT * FROM categorias";
$mostar = mysqli_query($con,$sql);

while($row=mysqli_fetch_array($mostar)){
    $index['id']=$row['0'];
     $index['categoria']=$row['1'];
      $index['fecha']=$row['2'];
       array_push($result['datos'],$index);
}
$result["succes"]="1";
echo json_encode($result);
mysqli_close($con);

?>