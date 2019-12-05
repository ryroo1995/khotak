<?php
include('includes/header.php');
$subjectId="";
if(isset($_GET['subjectId'])){
    $sub=$_GET['subjectId'];
}else{
    $sub="major";
}
?>
<!-------------------------------------------------------------------------------------------------------------------------------------->
    <div class="content-section">
        <div class="overflow"></div>
        <div class="container">
      <div class="con">
    <div class="wel" id="well-s">
       welcome to KHOTAK website
    </div> <!-- end of welcom -->
                                         <span class="arrow ">
                 <i class="fa fa-chevron-down hvr-icon-hang typed-cursor"></i>
                                 </span>
            </div><!--end con-->
       </div><!-----------------end container-->
    </div>
<!-------------------------------------------------------------------------------------------------------------------------------------->
   <!-- section 1------------------------------------------------------------------------------------------------------------------ -->
<?php
if($sub=="major"){
?>
<div class="image-subjects text-center">
      <div class="container">
          <h2>Major</h2>
           <div class="row">
             <?php
               global $con;

            $stmt=$con->prepare("select * FROM major ");
              $stmt->execute();
               $majors=$stmt->fetchAll();
                $counts3=$stmt->rowCount();
               foreach($majors as $maj){
                 ?>
                 <div class="col-md-4">
                <?php

                     ?>
                <div class="panel panel-primary">
      <div class="panel-body"><a href="?Id=<?php echo $maj['majorID'] ?>&subjectId=pageSub">
                <?php echo $maj['name']; ?>
                </a></div>
    </div>

                 </div>
                 <?php
               }

              ?>
           </div>

      </div>
</div>

<!-------------------------------------------------------------------->
<?php
}elseif($sub=="pageSub"){

        $id=$_GET['Id'];


 ?>
 <div class="image-subjects text-center">
      <div class="container">
          <h2>subjects</h2>
           <div class="row">
             <?php
               global $con;

            $stmt=$con->prepare("select * FROM subject
            where majorid=?");
              $stmt->execute(array($id));
               $subjects=$stmt->fetchAll();
                $counts3=$stmt->rowCount();
               foreach($subjects as $subj){
                 ?>
                 <div class="col-md-4">
                <?php

                     ?>
               <div class="panel panel-primary">
                   <div class="panel-body">
<a href="?IdSub=<?php echo $subj['subjectID']; ?>&subjectId=pageSubs">
                <?php echo $subj['name']; ?>
                </a>
                   </div>
                   </div>
                 </div>
                 <?php
               }

              ?>
           </div>

      </div>
</div>







   <?php
}elseif($sub=="pageSubs"){
    $ids=$_GET['IdSub'];
?>
<div class="subjectname text-center">
     <div class="container">
         <?php
     $stmt=$con->prepare("select * FROM subject
            where subjectID=?");
              $stmt->execute(array($ids));
               $subjects=$stmt->fetch();
                $counts4=$stmt->rowCount();
    if($counts4 >0){
         ?>
          <h2><?php echo $subjects['name'];?></h2>
         <div class="alert alert-info">
  <strong></strong> <?php echo $subjects['discription'];?>
</div>
          <?php
             $stmt6=$con->prepare("SELECT universty.name
FROM universty,subject_universty,subject
WHERE universty.univID=subject_universty.univID AND subject.subjectID=subject_universty.subjectID AND subject.subjectID=?");
            $stmt6->execute(array($ids));
               $subjects=$stmt6->fetchAll();
                $counts4=$stmt6->rowCount();
        foreach($subjects as $s){
           ?>


            <div class="alert alert-success">
  <strong></strong> <?php echo $s['name'];?>
</div>


           <?php
        }
         ?>
     </div>
</div>
<?php
    }
}


?>
<!---------------------------------------------------------------------->
<?php
include('includes/footer.php');
?>
