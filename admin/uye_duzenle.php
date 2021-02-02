<?php 
    session_start();
    ob_start();
    if(!isset($_SESSION["id"])){
        header('Location:index.php');
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/admin.css" />
    <title>Uye Duzenle - Türkçe Otel</title>
</head>
<body>
    <?php include("menu.php") ?>
    <div id="icerik">
        <?php 
            include "../sql.php";
            $kayitCek="select * from musteri where id=".$_GET["musteri_id"];
            $calistir = mysqli_query($baglanti,$kayitCek);
            $cal = $calistir->fetch_assoc();
        ?>
        <div id="uye-duzenle">
            <form  method="POST">
                <p>Kullanıcı Adı</p>
                <input type="text" value="<?php echo $cal["kullanici_adi"]?>" name="kullanici_adi" required>
                <p>Ad</p>
                <input type="text" value="<?php echo $cal["ad"]?>" name="ad" required>
                <p>Soyad</p>
                <input type="text" value="<?php echo $cal["soyad"]?>" name="soyad" required>
                <p>Telefon</p>
                <input type="text" value="<?php echo $cal["telefon"]?>" name="telefon" required>
                <p>Eposta</p>
                <input type="email" value="<?php echo $cal["eposta"]?>" name="eposta" required>
                <p>Doğum Tarihi</p>
                <input type="date" value="<?php echo $cal["dogum_tarihi"]?>" name="dogum_tarihi" required>
                <p>İl</p>
                <input type="text" value="<?php echo $cal["il"]?>" name="il" required>
                <button>Kaydet</button>
            </form>
        </div>
    </div>

    <?php 
        if(isset($_POST["ad"])){
            $musteri_id=$_GET["musteri_id"];
            $duzenle="update musteri set
             kullanici_adi='".$_POST['kullanici_adi']."',
             ad='".$_POST['ad']."',
             soyad='".$_POST['soyad']."',
             telefon='".$_POST['telefon']."',
             eposta='".$_POST['eposta']."',
             dogum_tarihi='".$_POST['dogum_tarihi']."',
             il='".$_POST['il']."' 
             where id=$musteri_id
        ";
        $duzenleCalistir= mysqli_query($baglanti,$duzenle);
            header("Location:uyeler.php");
        }
    
    ?>
</body>
</html>