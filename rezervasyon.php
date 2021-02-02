<?php 
session_start();
ob_start();
?>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/rezervasyon.css" />
    <title>Rezervasyon - Türkçe Otel</title>
</head>
<body>
    <?php include "menu.php" ?>
    <?php include "sql.php" ?>
    <?php
        if(empty($_SESSION["id"])){
            header("Location:giris.php");
        }
        
        $kayitCek="select o.id,o.resim,o.oda_adi,o.aciklama,o.yetiskin_fiyat,o.cocuk_fiyat,ot.otel_adi,o.kapasite from odalar o inner join oteller ot on o.otel_id=ot.id where o.otel_id=".$_GET["otelid"];
        $calistir = mysqli_query($baglanti,$kayitCek);
        $cek=$calistir->fetch_assoc();
        $tutar=$_SESSION["yetiskin"]*$cek["yetiskin_fiyat"]+$_SESSION["cocuk"]*$cek["cocuk_fiyat"];
        $tutar2=$_POST["yetiskin"]*$cek["yetiskin_fiyat"]+$_POST["cocuk"]*$cek["cocuk_fiyat"];
    ?>
    <form method="POST">
        <div class="ortala">
            <h3>Rezervasyon</h3>
            <input type="text" name="otel_adi" value="<?php echo $cek["otel_adi"]; ?>" disabled>
            <input type="text" name="otel_adi" value="<?php echo $cek["oda_adi"]; ?>" disabled>
            <input type="date" name="gidis_tarihi" value="<?php echo $_SESSION["gidis_tarihi"]; ?>">
            <input type="date" name="donus_tarihi" value="<?php echo $_SESSION["donus_tarihi"]; ?>">
            <input type="text" name="yetiskin" value="<?php echo $_SESSION["yetiskin"]; ?>" placeholder="yetişkin sayısı" >
            <input type="text" name="cocuk" value="<?php echo $_SESSION["cocuk"]; ?>" placeholder="çocuk sayısı" >
            <?php 
                if($tutar>0){
                    //echo "<input type='text' name='tutar' value="." >";
                }
            ?>
            
            <select name="odeme_tip" id="">
                <option value="1">Kredi Kartı</option>
                <option value="2">Nakit</option>
            </select>
            <button name="rezervasyon_onay">Ödeme Yap</button>
        </div>
    </form>

    <?php 
        date_default_timezone_set('Etc/GMT-3');
        $tarih =date('Y-m-d');
            if(isset($_SESSION["gidis_tarihi"])){
                $sql="INSERT INTO rezervasyon 
                (
                    musteri_id,
                    otel_id,
                    oda_id,
                    rezervasyon_tarihi,
                    giris_tarihi,
                    cikis_tarihi,
                    yetiskin_sayisi,
                    cocuk_sayisi,
                    tutar,
                    odeme_id
                )
                
                VALUES(
                    {$_SESSION["id"]},
                    {$_GET["otelid"]},
                    {$_GET["odaid"]},
                    '".$tarih."',
                    '".$_SESSION["gidis_tarihi"]."',
                    '".$_SESSION["donus_tarihi"]."',
                    {$_SESSION["yetiskin"]},
                    {$_SESSION["cocuk"]},
                    {$tutar},
                    {$_POST["odeme_tip"]}

                )";
                $kayit_ekle = mysqli_query($baglanti,$sql);

            }else{
                $sql="INSERT INTO rezervasyon 
                (
                    musteri_id,
                    otel_id,
                    oda_id,
                    rezervasyon_tarihi,
                    giris_tarihi,
                    cikis_tarihi,
                    yetiskin_sayisi,
                    cocuk_sayisi,
                    tutar,
                    odeme_id
                )
                
                VALUES(
                    {$_SESSION["id"]},
                    {$_GET["otelid"]},
                    {$_GET["odaid"]},
                    '".$tarih."',
                    '".$_POST["gidis_tarihi"]."',
                    '".$_POST["donus_tarihi"]."',
                    {$_POST["yetiskin"]},
                    {$_POST["cocuk"]},
                    {$tutar2},
                    {$_POST["odeme_tip"]}

                )";
                $kayit_ekle = mysqli_query($baglanti,$sql);
                

            }
        
        if(isset($_POST["rezervasyon_onay"])){
            //echo "<meta http-equiv='refresh' content='0;URL=hesabim.php'>";
        }
    ?>
    

    <?php include "alt.php" ?>
</body>
</html>