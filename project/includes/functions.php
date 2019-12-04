<?php
ob_start();
session_start();
$_SESSION['letterone']=0;
$_SESSION['letterTwo']=0;




function TestLetterOne($TestOne){
    global $con;
$letterOne=0;
        if($TestOne =="SD"){
          $NumberValue =10;
        }elseif($TestOne =="D"){
            $NumberValue =5;
        }elseif($TestOne =="A" ){
            $NumberValue =5;
        }elseif($TestOne =="SA"){
        $NumberValue =10;
             }





    if($TestOne =="SD" or $TestOne =="D"){
       $_SESSION['letterone']  += $NumberValue;


     //////////////////////////////////////////////////
    ////////////////////////////////////////////////
    }elseif($TestOne =="SA" or $TestOne =="A"){
         $_SESSION['letterTwo'] +=$NumberValue;
    }

/////////////////////////
}
/////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
function TestLetterTwo($TestOne){
    global $con;
$letterTwo=0;
        if($TestOne =="SD"){
          $NumberValue =10;
        }elseif($TestOne =="D"){
            $NumberValue =5;
        }elseif($TestOne =="A" ){
            $NumberValue =5;
        }elseif($TestOne =="SA"){
        $NumberValue =10;
             }
/////////////////////////

        if($TestOne =="SD" or $TestOne =="D"){
       $_SESSION['letterTwo'] += $NumberValue;

        /////////////////////////////////////
      ////////////////////////////////////
    }elseif($TestOne =="SA" or $TestOne =="A"){
      $_SESSION['letterone'] +=$NumberValue;
        }



}





//////////////////////////
function TestLetterThree($TestOne){
    global $con;
$letterThree=0;
        if($TestOne =="SD"){
          $NumberValue =10;
        }elseif($TestOne =="D"){
            $NumberValue =5;
        }elseif($TestOne =="A" ){
            $NumberValue =5;
        }elseif($TestOne =="SA"){
        $NumberValue =10;
             }





    if($TestOne =="SD" or $TestOne =="D"){
       $_SESSION['letterThree']  += $NumberValue;


     //////////////////////////////////////////////////
    ////////////////////////////////////////////////
    }elseif($TestOne =="SA" or $TestOne =="A"){
         $_SESSION['letterFour'] +=$NumberValue;
    }

/////////////////////////
}
/////////////////////////////////////////////////
///////////////////////////////////////////////////////////////
function TestLetterFour($TestOne){
    global $con;
$letterFour=0;
        if($TestOne =="SD"){
          $NumberValue =10;
        }elseif($TestOne =="D"){
            $NumberValue =5;
        }elseif($TestOne =="A" ){
            $NumberValue =5;
        }elseif($TestOne =="SA"){
        $NumberValue =10;
             }
/////////////////////////

        if($TestOne =="SD" or $TestOne =="D"){
       $_SESSION['letterFour'       ] += $NumberValue;

        /////////////////////////////////////
      ////////////////////////////////////
    }elseif($TestOne =="SA" or $TestOne =="A"){
      $_SESSION['letterThree'] +=$NumberValue;
        }



}
ob_end_flush();
?>
