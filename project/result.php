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
      <RESULT></RESULT> Result
    </div> <!-- end of welcom -->

            </div><!--end con-->
       </div><!-----------------end container-->
    </div>
<!-------------------------------------------------------------------------------------------------------------------------------------->

<!----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->

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



        $_SESSION['res7']=$_SESSION['letterone'];
        $_SESSION['res8']=$_SESSION['letterTwo'];

        $_SESSION['resz']=$_SESSION['res1']+$_SESSION['res2'];


        if($_SESSION['res7']>$_SESSION['res8']){
            $_SESSION['resn']=$_SESSION['res7'];
        }else{
            $_SESSION['resn']=$_SESSION['res8'];
        }

        $_SESSION['resp4']=($_SESSION['resn']/$_SESSION['resz'])*100;
        if($_SESSION['letterone'] >$_SESSION['letterTwo']){
            $x="J";
            $y="Judgment";
        }else{
           $x="P";
            $y='Perception';
        }
 $TestQuizFour=$x;
$_SESSION['TestQuizFour']=  $TestQuizFour;
$_SESSION['TestQuizFourALPHA']=  $y;


    }
}

$res=$_SESSION['TestQuizOne'].$_SESSION['TestQuizTwo'].$_SESSION['TestQuizThree'].$_SESSION['TestQuizFour'];
global $res;


      ?>
<!------------------------------------------------------------------->
<div class="result text-center">
   <div class="container">
   <?php


    ?>
   <div class="sec">
   <div class="resp">
    <div class="card">
        <div class="box">
            <div class="percent">
                <svg>
                    <circle cx='70' cy='70' r='70'></circle>
                    <circle cx='70' cy='70' r='70'></circle>
                </svg>
                <div class="number">
                    <h2><?php echo (int)$_SESSION['resp1'];?><span>%</span></h2>
                </div>
            </div>
            <h2 class="text"><?php echo $_SESSION['TestQuizOneALPHA'];?></h2>
        </div>
    </div>
    <div class="card">
        <div class="box">
            <div class="percent">
                <svg>
                    <circle cx='70' cy='70' r='70'></circle>
                    <circle cx='70' cy='70' r='70'></circle>
                </svg>
                <div class="number">
                    <h2><?php echo (int)$_SESSION['resp2'];?><span>%</span></h2>
                </div>
            </div>
            <h2 class="text"><?php echo $_SESSION['TestQuizTwoALPHA'];?></h2>
        </div>
    </div>
    <div class="card">
        <div class="box">
            <div class="percent">
                <svg>
                    <circle cx='70' cy='70' r='70'></circle>
                    <circle cx='70' cy='70' r='70'></circle>
                </svg>
                <div class="number">
                    <h2><?php echo (int) $_SESSION['resp3'];?><span>%</span></h2>
                </div>
            </div>
            <h2 class="text"><?php echo $_SESSION['TestQuizThreeALPHA'];?></h2>
        </div>
    </div>
    <div class="card">
        <div class="box">
            <div class="percent">
                <svg>
                    <circle cx='70' cy='70' r='70'></circle>
                    <circle cx='70' cy='70' r='70'></circle>
                </svg>
                <div class="number">
                    <h2><?php echo (int)    $_SESSION['resp4'];?><span>%</span></h2>
                </div>
            </div>
            <h2 class="text"><?php echo $_SESSION['TestQuizFourALPHA'];?></h2>
        </div>
    </div>
</div>
 </div>

          <p>Result:<?php echo $res; ?></p>

          <?php
                      $stmt=$con->prepare("select * FROM personalaty where personID=? ");
              $stmt->execute(array( $res));
               $person=$stmt->fetchAll();
                $counts3=$stmt->rowCount();
               foreach($person as $maj){
                    $personID= $maj['name'];
                    $personDIS= $maj['disc'];
                 ?>
                 <p><?php echo $personID;?></p>
                 <p><?php echo $personDIS;?></p>

                 <!---------------------------table---------------->




                 <table class="table">
  <thead>
    <tr>
      <th scope="col">Personality</th>
      <th scope="col">Jobs</th>
      <th scope="col">Major</th>
    </tr>
  </thead>
  <tbody>

    <?php
                $stmt2=$con->prepare("SELECT personalaty.name AS personalty , job.name as jobs ,major.name AS major FROM personalaty,job,major WHERE job.personID =personalaty.personID AND job.majorID = major.majorID AND personalaty.personID = ? ");
              $stmt2->execute(array( $res));
               $person2=$stmt2->fetchAll();
               foreach($person2 as $majs){
                   ?>
                   <tr>
                    <td><?php echo $majs['personalty']?></td>
                    <td><?php echo $majs['jobs']?></td>
                    <td><?php echo $majs['major']?></td>
            </tr>
                   <?php
               }
        ?>



  </tbody>
</table>
                 <?php
               }
           ?>




</div>
</div>

<!---------------------------------------------------------------------->
<?php
include('includes/footer.php');
?>
