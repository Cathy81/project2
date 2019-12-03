
<?php
 // session_start();
 // if(!isset($_SESSION['searchcomm']))
 // {
 //    echo("Illegal Access!");
 //    exit(0);
 //  }
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    <style type="text/css">
     .space10 {
      height: 10px;
     }

     .menuSize {
    width: 200px;
    height: 200px;
}
     </style>
    <title>View Documents</title>
  </head>
  <body>
    <div class="container">
<?php
$arrStatus=array("Submmited"=>0,"inReview"=>1);

  require_once("pageHeader.php");
   require_once("sqlSts.php");
   require_once("./util/htmlElem.php");
  
  pageHeader("Summary","viewDocuments.php","gyc-logo.png","Logout");

 $conn=connectDB();
if (!$conn)
   exit("Unable to connect DB");
$id=$_POST['aID'];
$pID=$_POST['pID'];
  	
$query="SELECT dateUploaded, docType, documentID, applicantID, filePath FROM tblappdocs WHERE applicantID='$id'" ;
//  	echo "$query";
  $arr= getResultFromTable($conn, $query);
  
  $query="SELECT AutoID, Description FROM tlkpapplicationfiles" ;
//    echo "$query";
  $arrAllDocs= getResultFromTable($conn, $query);

  $query="SELECT PersonFN,PersonLN, PAddress, PAddress2, PCity, PState, PZip, PMailAddress, PMailCity, PMailState, PMailZip, PCounty, PEmail FROM tblpeople2 WHERE PersonID='$pID'" ;
  $infoDB= getResultFromTable($conn, $query);
  $info=$infoDB[0]['PersonFN']." ".$infoDB[0]['PersonLN']."<br>";
  $info.=$infoDB[0]['PAddress']." ".$infoDB[0]['PAddress2'].",";
   $info.=$infoDB[0]['PCity'].", ".$infoDB[0]['PState']
        .", ".$infoDB[0]['PZip']."<br>"
        .$infoDB[0]['PEmail']."<br>".$pID;
  echo<<<EOT
  <div class="row ">
  <div class="col-sm-8 offset-sm-1 ">
<div class="card bg-info text-white mt-5">
    <div class="card-body  ">$info</div>
  </div>
  </div>
  </div>
  <br>
EOT;

echo "<div class=\" row \">";
showSubmittedDoc($arr);
echo "</div>";
showMissingDoc($arr,$arrAllDocs);
 

function showSubmittedDoc($arr)
{

   echo "<h3>Completed Documents</h3>";
   echo<<<EOT
   <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col-2">Document</th>
      <th scope="col-3">Date Updated</th>
      
    </tr>
  </thead>
  <tbody>
EOT;
  foreach ($arr as $row) {
    $doc=$row['docType'];
    $fileP=$row['filePath'];
    $str="<a href=\"$fileP\">$doc";
    
    echo "<tr><td>$str</td><td>".$row['dateUploaded']."</td></tr>"; 

    } 
    echo "</tbody></table>"; 
}

function showMissingDoc($arr,$arrAllDocs)
{
   $docAllIDs=array();
   foreach ($arrAllDocs as $row) {
     $key=$row['AutoID'];
     $value=$row['Description'];

     $docAllIDs[$key]=$value;
   }
     $docSubmittedIDs=array();
   foreach ($arr as $row) {
     $key=$row['documentID'];
      array_push($docSubmittedIDs,$key);
   }
   echo "<h3>Missing Documents</h3>";
   echo<<<EOT
   <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col-2">Document</th>
         
    </tr>
  </thead>
  <tbody>
EOT;

$notIn=array_diff(array_keys($docAllIDs),$docSubmittedIDs);
//print_r($notIn);
  foreach ($notIn as $key) {
    echo "<tr><td>".$docAllIDs["$key"]."</td></tr>"; 
     }
    
    echo "</tbody></table>"; 
}


 ?>
</div>
<script type="text/javascript" src="./js/search.js"></script>
 <!-- Optional JavaScript -->

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>