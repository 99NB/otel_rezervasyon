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
    <title>Otel Duzenle - Türkçe Otel</title>
</head>
<body>
    <?php include("menu.php") ?>
    <div id="icerik">
        <?php 
            include "../sql.php";
            $kayitCek="select * from oteller where id=".$_GET["otel_id"];
            $calistir = mysqli_query($baglanti,$kayitCek);
            $cal = $calistir->fetch_assoc();
        ?>
        <div id="otel-duzenle">
            <form  method="POST" enctype="multipart/form-data">
                <p>Otel Adı</p>
                <input type="text" value="<?php echo $cal["otel_adi"]?>" name="otel_adi" required>
                <p>Açıklama</p>
                <textarea name="aciklama" cols="30" rows="10" required><?php echo $cal["aciklama"] ?></textarea>
                <p>Resim</p>
                <input type="file" name="resim" required>
                <p>İl</p>
                <select name="il" id="il" required>
                    <?php 
                        $iller =["Adana","Adıyaman","Afyon","Ağrı","Amasya","Ankara","Antalya","Artvin","Aydın","Balıkesir","Bilecik","Bingöl","Bitlis","Bolu","Burdur","Bursa","Çanakkale","Çankırı",
                        "Çorum","Denizli","Diyarbakır","Edirne","Elazığ","Erzincan","Erzurum","Eskişehir","Gaziantep","Giresun","Gümüşhane","Hakkari","Hatay","Isparta","Mersin","İstanbul","İzmir","Kars","Kastamonu","Kayseri","Kırklareli",
                        "Kırşehir","Kocaeli","Konya","Kütahya","Malatya","Manisa","Kahramanmaraş","Mardin","Muğla","Muş","Nevşehir","Niğde","Ordu","Rize","Sakarya","Samsun","Siirt","Sinop","Sivas","Tekirdağ","Tokat","Trabzon",
                        "Tunceli","Şanlıurfa","Uşak","Van","Yozgat","Zonguldak","Aksaray","Bayburt","Karaman","Kırıkkale","Batman","Şırnak","Bartın","Ardahan","Iğdır","Yalova","Karabük","Kilis","Osmaniye","Düzce"
                        ];
                        for($i=0;$i<81;$i++){
                            echo "<option>".$iller[$i]."</option>";
                        };
                    ?>
                </select>
                <p>Adres</p>
                <input type="text" value="<?php echo $cal["adres"]?>" name="adres" required>
                <p>Telefon</p>
                <input type="text" value="<?php echo $cal["telefon"]?>" name="telefon" required>
                <p>Eposta</p>
                <input type="email" value="<?php echo $cal["eposta"]?>" name="eposta" required>
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
        $otel_id=$_GET["otel_id"];
        
        if(isset($_POST["kaydet"])){
                $duzenle='update oteller set
                otel_adi="'.$_POST['otel_adi'].'",
                aciklama="'.$_POST['aciklama'].'",
                resim="'.$dosyaAdi.'",
                il="'.$_POST['il'].'",
                adres="'.$_POST['adres'].'",
                telefon="'.$_POST['telefon'].'",
                eposta="'.$_POST['eposta'].'" 
                where id="'.$otel_id.'"
                ';
                $duzenleCalistir= mysqli_query($baglanti,$duzenle);
                $resimSql="insert into resimler (
                    resimler
                )values(
                    '".$dosyaAdi."'
                )";
                $resimSqlCalistir=mysqli_query($baglanti,$resimSql);
                // bakımda 
                header("Location:oteller.php");
        }
    
    ?>
</body>
</html>