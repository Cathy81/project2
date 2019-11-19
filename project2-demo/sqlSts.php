<?php
function connectDB()
{
//pg 236
$hostname="localhost";
$db="minerva2019";
$pwd="password";
$user="phpUser1";
//pg 237

//production:

// $hostname="pdb34.awardspace.net";
// $db="2933239_db";
// $pwd="Abcd@1234";
// $user="2933239_db";

$conn=new mysqli($hostname,$user,$pwd,$db);
if($conn->connect_error) die("Connection to DB error!"); 

return $conn;
}

function getResultFromTable($conn, $query)
{
	//get the content
	$arr=array();
	$result=$conn->query($query);
	if(!$result) die("Fatal Error on query from DBFuncs");
	$rows=$result->num_rows;
	for($i=0;$i<$rows;$i++)
	{
		array_push($arr, $result->fetch_assoc());
    }
    
    $result->free();
    return $arr;

}


?>