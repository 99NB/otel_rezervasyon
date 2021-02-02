<?php 
session_start();
ob_start();
include "../sql.php";
$kayitCek="select * from musteri where kullanici_adi='".$_POST["kullanici_adi"]."' and sifre='".$_POST["sifre"]."'";
$calistir = mysqli_query($baglanti,$kayitCek);
$cal=$calistir->fetch_assoc();

$_SESSION["id"]=$cal["id"];
$_SESSION["kullanici_adi"]=$cal["kullanici_adi"];
$_SESSION["sifre"]=$cal["sifre"];
$_SESSION["admin"]=$cal["admin"];
echo $_SESSION["id"];
if(!isset($_SESSION["id"])){
    header('Location:index.php');
}
if(isset($_SESSION["id"])){
    header('Location:anasayfa.php');;
}
?>