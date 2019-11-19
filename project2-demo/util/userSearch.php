<?php
$dir=dirname(dirname(__FILE__));  
require_once '../sqlSts.php';
    $conn=connectDB();
	$names=array(); //hold a list of names return from SQL
    if(isset($_GET["pUserName"]))
   {
     $partName=$_GET["pUserName"];
     echo "hehe";
      $query="SELECT PersonLN FROM tblpeople2 inner join tblapplicants on PersonID=tblapplicants.fkPersonID WHERE PersonLN like '$partName%' ORDER BY PersonLN";   
  } 
    $arr=getResultFromTable($conn,$query);  //arr['UserLoginName']="mis"....
    foreach ($arr as $record) {
    	 foreach ($record as $key => $value) {
    	 	array_push($names, $value);
    	 }
    	
    }
    $popStr=implode(" ",$names);  //php echp "major med minzt mis"
    
     echo $popStr;

?>