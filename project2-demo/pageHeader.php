<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

   <style type="text/css">
    .logo {
          width:200px;
          height:200px
           }
    .mTop {
          margin-top: 40px;
           }     
  </style>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <?php 
  function addSearchLastName($title,$page)
  {
  echo<<<EOT
   <div class="row">
      <div class="col-sm-3">
        <img  src="./images/gyc-logo.png"  class="img-fluid img-thumbnail logo" >
      </div>
      <div class="col-sm-9">
        <div class="row">
         <h2 class="col-sm-2 mTop">$title </h2>
         <div class="col-sm-10 col-sm-push-3 mTop">
            <form action="./$page" method="post">
              <input class="col-3" list="listLastNames" id="lastNameJs" onkeyup="findPartName(this)" name="lastName">
                    <datalist id="listLastNames">
                      
                    </datalist>         
                    <input class="btn btn-primary col-2" type="submit" value="Search">
             </form>
          </div>
        </div>
EOT;
   }
  function pageHeader($title,$page,$img,$logInfo)
  {
     addSearchLastName($title,$page);
   echo<<<EOT
     
      <div class="row">
        <ul class="nav nav-tabs mTop">
          <li><a href="index.php">Home</a></li>
          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="./viewApplicants.php">Applicants</a>
            <ul class="dropdown-menu">
              <li><a href="./viewApplicants.php?statusId=0">Applicants</a></li>
              <li><a href="./viewApplicants.php?statusId=1">Selected</a></li>
              <li><a href="./viewApplicants.php?statusId=2">Candidates</a></li>
              <li><a href="./viewApplicants.php?statusId=3">Deadpool</a></li>   <li><a href="./viewApplicants.php">All</a></li>                      
            </ul>
          </li>
          <li><a href="viewDocuments.php">Documents</a></li>
          <li><a href="#">Forms</a></li>
          <li><a href="#">Email</a></li>
          <li><a href="about.html">About</a></li>
         
        </ul>
      </div>
    </div>  
   </div>
EOT;
}
?>
</div>
<script type="text/javascript" src="./js/search.js"></script>
</body>
</html>
