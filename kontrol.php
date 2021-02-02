<?php 
session_start();
ob_start();
include "sql.php";
$kayitCek="select * from musteri where kullanici_adi='".$_POST["kullanici_adi"]."' and sifre='".$_POST["sifre"]."'";
$calistir = mysqli_query($baglanti,$kayitCek);
$cal=$calistir->fetch_assoc();

$_SESSION["id"]=$cal["id"];
$_SESSION["kullanici_adi"]=$cal["kullanici_adi"];
$_SESSION["sifre"]=$cal["sifre"];
$_SESSION["admin"]=$cal["admin"];
if(!isset($_SESSION["id"])){
    header('Location:giris.php');
}
if(isset($_SESSION["id"])){
header('Location:hesabim.php');
}
if($cal["admin"]=="evet"){
    header("Location:admin/anasayfa.php");
}
?>