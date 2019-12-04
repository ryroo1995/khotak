<?php
include('includes/header.php');
include('includes/functions.php');
?>


<!-------------------------------------------------------------------------------------------------------------------------------------->
<!-------------------------------------------------------------------------------------------------------------------------------------->
    <div class="content-section">
        <div class="overflow"></div>
        <div class="container">
      <div class="con">
    <div class="wel" id="well-s">
      <RESULT></RESULT> Page
    </div> <!-- end of welcom -->

            </div><!--end con-->
       </div><!-----------------end container-->
    </div>
<!-------------------------------------------------------------------------------------------------------------------------------------->


<?php
//////////////////////////////////////////////////////////
if($_SERVER['REQUEST_METHOD']=='POST'){

    if(isset($_POST['test4-button'])){

        $TestOne=$_POST['optradio'];
         $TestOne2=$_POST['optradio2'];
        $TestOne3=$_POST['optradio3'];
        $TestOne4=$_POST['optradio4'];
        $TestOne5=$_POST['optradio5'];
        $TestOne6=$_POST['optradio6'];
        $TestOne7=$_POST['optradio7'];
        $TestOne8=$_POST['optradio8'];
        $TestOne9=$_POST['optradio9'];
        $TestOne10=$_POST['optradio10'];
        $TestOne11=$_POST['optradio11'];


        TestLetterTwo($TestOne);
        TestLetterTwo($TestOne2);
        TestLetterTwo($TestOne3);
        TestLetterTwo($TestOne4);
        TestLetterOne($TestOne5);
        TestLetterTwo($TestOne6);
        TestLetterOne($TestOne7);
        TestLetterOne($TestOne8);
        TestLetterOne($TestOne9);
        TestLetterTwo($TestOne10);
        TestLetterOne($TestOne11);





        echo "letter seven". $_SESSION['letterone']."Letter  eight".$_SESSION['letterTwo'];

        if($_SESSION['letterone'] >$_SESSION['letterTwo']){
            $x="J";
        }else{
           $x="P";
        }
 $TestQuizFour=$x;
$_SESSION['TestQuizFour']=  $TestQuizFour;
        echo "<br/>". $TestQuizFour;


    }





}
     var_dump($_SESSION);
      ?>
<!------------------------------------------------------------------->
<div class="hhh">
    <p>TEST ONE<?PHP echo $_SESSION['TestQuizOne'];?></p>
      <p>TEST two<?PHP echo $_SESSION['TestQuizTwo'];?></p>
        <p>TEST three<?PHP echo $_SESSION['TestQuizThree'];?></p>
          <p>TEST four<?PHP echo $_SESSION['TestQuizFour'];?></p>

</div>

<!---------------------------------------------------------------------->
<?php
include('includes/footer.php');
?>
