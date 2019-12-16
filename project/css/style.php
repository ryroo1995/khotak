
<?php
ob_start();
session_start();
    header("Content-type: text/css; charset: UTF-8");
$one = $_SESSION['resp1'];
   $two =$_SESSION['resp2'];
$three=$_SESSION['resp3'];
$four = $_SESSION['resp4'];

?>


.sec{
    align-items: center;
    justify-content: center;
    display: flex;
    background: white ;
    margin-top: 33px;
    min-height: 10vh;
}
.resp{
    justify-content:space-around;

    position: relative;
    width: 900px;
    display: flex;
}
.resp .card {
    position: relative;
    width:250px;
    background: linear-gradient(0deg,#1b1b1b,#222,#1b1b1b);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 300px;
    border-radius: 4px;
    text-align: center;
    overflow: hidden;
    transition: 0.5s;
    }
.resp .card:hover{
    transform: translateY(-10px);
    box-shadow: 0 15px 35px rgba(0,0,0,0.5);
}
.resp .card:before{
    content: '';
    position: absolute;
    top: 0;
    left: -50%;
    width: 100%;
    height: 100%;
    background: rgba(255,255,255,0.03);
    pointer-events: none;
    z-index: 1;
  }
.percent{
    position: relative;
    width: 150px;
    height: 150px;
    border-radius: 50%;
    box-shadow: inset 0 0 50px #000 ;
    background: #222;
    z-index: 1000;
    }
.percent .number{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    justify-content: center;
    align-items: center;
    display: flex;
    border-radius: 50%;
}
.percent .number h2{
    color: #777;
    font-size: 40px;
    font-weight: 700;
    transition: 0.5s;


}
.card:hover .percent .number h2{
    color: #fff;
    font-size: 60px;

}
.percent .number h2 span{
    font-size: 24px;
    color: #777;
    transition: 0.5s;
}
.card:hover .percent .number h2 span{
    color: #fff;

}
.text {
    position: relative;
    color: #777;
    font-weight: 700;
    font-size: 18px;
    letter-spacing: 1px;
    text-transform: uppercase;
    transition: 0.5s;
    margin-top: 20px;

}
.card:hover .text{
    color: #fff;
}
svg{
position: relative;
    width: 150px;
    height: 150px;
    z-index: 1000;

}

svg circle {
    width: 100%;
    height: 100&;
    fill: none;
    stroke : #f0f0f0;
    stroke-width:10;
    stroke-linecap: round ;
    transform: translate(5px,5px);

}
svg circle:nth-child(2) {
    stroke-dasharray: 440;
    stroke-dashoffset: 440;

}
.card:nth-child(1) svg circle:nth-child(2){
     stroke-dashoffset: calc(440 - (440 * <?php echo $one ; ?>) / 100);
    stroke:#00ff43;

}
.card:nth-child(2) svg circle:nth-child(2){
     stroke-dashoffset: calc(440 - (440 * <?php echo $two; ?>) / 100);
    stroke:#00a1ff;

}
.card:nth-child(3) svg circle:nth-child(2){
     stroke-dashoffset: calc(440 - (440 * <?php echo $three; ?>) / 100);
    stroke:#ff04f7;

}
.card:nth-child(4) svg circle:nth-child(2){
     stroke-dashoffset: calc(440 - (440 * <?php echo $four; ?>) / 100);
    stroke:#ff04f7;

}

<?php ob_end_flush();?>
