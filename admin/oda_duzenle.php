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
    <title>Oda Duzenle - Türkçe Otel</title>
</head>
<body>
    <?php include("menu.php") ?>
    <div id="icerik">
        <?php 
            include "../sql.php";
            $kayitCek="select * from oteller ot inner join odalar o on o.otel_id=ot.id where o.id=".$_GET["oda_id"];
            $calistir = mysqli_query($baglanti,$kayitCek);
            echo $kayitCek;
            $cal = $calistir->fetch_assoc();
        ?>
        <div id="oda-duzenle">
            <form  method="POST" enctype="multipart/form-data">
                <p>Oda Adı</p>
                <input type="text" value="<?php echo $cal["oda_adi"]?>" name="oda_adi" required>
                <p>Açıklama</p>
                <textarea name="aciklama" cols="30" rows="10" required><?php echo $cal["aciklama"] ?></textarea>
                <p>Resim</p>
                <input type="file" name="resim"  required>
                <p>Yetişkin Fiyat</p>
                <input type="text" value="<?php echo $cal["yetiskin_fiyat"]?>" name="yetiskin_fiyat" required>
                <p>Çocuk Fiyat</p>
                <input type="text" value="<?php echo $cal["cocuk_fiyat"]?>" name="cocuk_fiyat" required>
                <p>Kapasite</p>
                <input type="text" value="<?php echo $cal["kapasite"]?>" name="kapasite" required>
                <p>Oda Büyüklüğü</p>
                <input type="text" value="<?php echo $cal["oda_buyuklugu"]?>" name="oda_buyuklugu" required>
                <button name="kaydet">Kaydet</button>
            </form>
        </div>
    </div>

    <?php 
        //dosya yukleme
            $maxBoyut= 5000000;
            $dosyaUzantisi=substr($_FILES["resim"]["name"],-4,4);
            $dosyaAdi=rand(0,9999999).$dosyaUzantisi;
            $dosyaYolu="../resim/".$dosyaAdi;
            
            if($_FILES["resim"]["size"]>$maxBoyut){
                    echo "buyuk dosya";
            }else{
                $d=$_FILES["resim"]["type"];
                if($d=="image/jpeg" || $d=="image/png"){
                    if(is_uploaded_file($_FILES["resim"]["tmp_name"])){
                        $tasi=move_uploaded_file($_FILES["resim"]["tmp_name"],$dosyaYolu);
                        if($tasi){
                            //echo "başarıyla yuklendi";
                        }else{
                            echo "dosya tasınırken hata";
                        }
                    }else{
                        echo "dosya yuklenirken hata";
                    }
            }
            }
        //dosya yukleme bitis
        $oda_id=$_GET["oda_id"];
        if(isset($_POST["kaydet"])){
                $duzenle="update odalar set
                oda_adi='".$_POST['oda_adi']."',
                aciklama='".$_POST['aciklama']."',
                resim='".$dosyaAdi."',
                yetiskin_fiyat='".$_POST['yetiskin_fiyat']."',
                cocuk_fiyat='".$_POST['cocuk_fiyat']."',
                kapasite='".$_POST['kapasite']."',
                oda_buyuklugu='".$_POST['oda_buyuklugu']."' 
                where id=$oda_id
                ";
                $duzenleCalistir= mysqli_query($baglanti,$duzenle);
                $resimSql="insert into resimler (
                    resimler
                )values(
                    '".$dosyaAdi."'
                )";
                $resimSqlCalistir=mysqli_query($baglanti,$resimSql);
               header("Location:odalar.php");
        }
    
    ?>
</body>
</html>