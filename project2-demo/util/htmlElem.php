<?php 
//    example #1 of using the following function to generate priviledge option: 
//    $query="SELECT DISTINCT(UserSecGroup) FROM tblprivileges order by UserSecGroup";
 //    $arr1=getResultFromTable($conn,$query);
 //$query="SELECT * FROM tblusers ORDER BY UserLoginName";
   //  $arr=getResultFromTable($conn,$query);
 //foreach($arr as $record) {  
// $pv=$record['Privilege'];
//  $oStr=optionGen("security","secuityLevel",$arr1,$pv);
 //       echo $ $oStr;
 //       
 //      
 //       example #2 of using the following function to generate siteID option field
 //        $query="SELECT SiteID FROM tlkpsite";
  //  $arrSiteID= getResultFromTable($conn,$query);
 //         $sID=$record["fkSiteID"];
 //         $oStr=optionGen("siteID","fkSiteID",$arrSiteID,$sID);
 //         echo $ $oStr; 
 //       
 //       
 function optionGen($id,$field,$arr,$selectedValue)
 {
  $optionStr= "<select id=\"$id\" name=\"$field\">";
               
   foreach ($arr as $key=>$value) 
   {
    
     if ($value==$selectedValue)
     {
       $optionStr.= "<option value=\"$value\" selected>$value</option>";
     }    
     else
      $optionStr.= "<option value=\"$value\" >$value</option>";
    }
  $optionStr.=" </select>";
  return $optionStr;
    }

// 
// to use the following function:
// $emailQuery="SELECT formID, formName, formText FROM tblapplicantforms";
//$arr= getResultFromTable($conn, $emailQuery);
//generateFormList($arr)
function generateFormList($arr)
{
echo "<div class=\"accordionPId\">";
 $num=0;
foreach ($arr as $row) {
 $fID=$row['formID'];
 $fName=$row['formName'];
 $accoTarget="collapse".$num;
 $accoHId="heading".$num;
 $textAreaName="fText".$fID;
 $fText=$row['formText'];
 echo<<<EOT
 <div class="card">
    <div class="card-header" id="$accoHId">
      <h5 class="mb-0">
        <input type="radio" id="radioId$num" name="formRadio" value="$fID"   data-toggle="collapse" data-target="#$accoTarget" aria-expanded="false" aria-controls="$accoTarget">
          $fName
          </h5>
    </div>

    <div id="$accoTarget" class="collapse" aria-labelledby="$accoHId" data-parent="#accordionPId">
      <div class="card-body">
        <textarea name="$textAreaName" rows="5" cols="50">
        $fText;
        </textarea>
      </div>
    </div>
</div> 
EOT;
$num+=1;
}

echo "</div>";
}

?>
