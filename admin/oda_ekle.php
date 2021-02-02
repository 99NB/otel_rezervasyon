<?php 
    session_start();
    ob_start();
    if(!isset($_SESSION["id"])){
        header('Location:index.php');
    }
?>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/admin.css" />
    <title>Oda Ekle - Türkçe Otel</title>
</head>
<body>
    <?php include("menu.php") ?>
    <?php 
        include "../sql.php";
        
    ?>
    <div id="icerik">
        <div id="oda-ekle">
            <form action="" method="POST" enctype="multipart/form-data">
                <p>Otel Seçiniz</p>
                <select name="otel_id" required>
                    <?php 
                        $kayitCek="select id,otel_adi from oteller";
                        $calistir = mysqli_query($baglanti,$kayitCek);
                        while($cal=$calistir->fetch_assoc()){
                            echo "<option>".$cal["otel_adi"]."</option>";
                        }
                        
                    ?>
                </select>
                <p>Oda Adı</p>
                <input type="text" name="oda_adi" required>
                <p>Açıklama</p>
                <textarea name="aciklama" cols="30" rows="10" required></textarea>
                <p>Resim</p>
                <input type="file" name="resim" required>
                <p>Yetişkin Fiyat</p>
                <input type="text" name="yetiskin_fiyat" required>
                <p>Çocuk Fiyat</p>
                <input type="text" name="cocuk_fiyat" required>
                <p>Kapasite</p>
                <input type="text" name="kapasite" required>
                <p>Oda Buyuklugu (m2)</p>
                <input type="text" name="oda_buyuklugu" required>
                <button>Oda Ekle</button>
            </form>
            <?php 
                    $id_cek="select * from oteller where otel_adi='".$_POST["otel_id"]."'";
                    $id=mysqli_query($baglanti,$id_cek);
                    $id_sorgu=$id->fetch_assoc();
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
                                       // echo "başarıyla yuklendi";
                                    }else{
                                        echo "dosya tasınırken hata";
                                    }
                                }else{
                                    echo "dosya yuklenirken hata";
                                }
                        }
                        }
                    //dosya yukleme bitis
                    if(isset($_POST["oda_adi"])){
                        $otel_sql="insert into odalar (
                                otel_id,
                                oda_adi,
                                aciklama,
                                resim,
                                yetiskin_fiyat,
                                cocuk_fiyat,
                                kapasite,
                                oda_buyuklugu
                            ) values(
                                {$id_sorgu["id"]},
                                '".$_POST['oda_adi']."',
                                '".$_POST['aciklama']."',
                                '".$dosyaAdi."',
                                '".$_POST['yetiskin_fiyat']."',
                                '".$_POST['cocuk_fiyat']."',
                                '".$_POST['kapasite']."',
                                '".$_POST['oda_buyuklugu']."'
        
                            )";
                        $oda_ekle=mysqli_query($baglanti,$otel_sql);
                        $resimSql="insert into resimler (
                            resimler
                        )values(
                            '".$dosyaAdi."'
                        )";
                        $resimSqlCalistir=mysqli_query($baglanti,$resimSql);
                    }
                    if(isset($_POST["oda_adi"])){
                        echo "<meta http-equiv='refresh' content='0;URL=odalar.php'>";
                    }
                    
                    
            ?>
        </div>
    </div>

   
</body>
</html>