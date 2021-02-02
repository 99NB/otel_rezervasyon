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
    <title>Otel Ekle - Türkçe Otel</title>
</head>
<body>
    <?php include("menu.php") ?>
    <?php 
    include "../sql.php";
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
                        echo "başarıyla yuklendi";
                    }else{
                        echo "dosya tasınırken hata";
                    }
                }else{
                    echo "dosya yuklenirken hata";
                }
           }else{
                echo "jpg yada png yukle";
            }
        }
    //dosya yukleme bitis
    
    if(isset($_POST["otel_adi"])){
        $otel_ekle='insert into oteller 
        (
            otel_adi,
            aciklama,
            resim,
            il,
            adres,
            telefon,
            eposta
        )
        values(
        "'.$_POST['otel_adi'].'",
        "'.$_POST['aciklama'].'",
        "'.$dosyaAdi.'",
        "'.$_POST['il'].'",
        "'.$_POST['adres'].'",
        "'.$_POST['telefon'].'",
        "'.$_POST['eposta'].'"

        )';
        $calistir = mysqli_query($baglanti,$otel_ekle);
        $resimSql="insert into resimler (
            resimler
        )values(
            '".$dosyaAdi."'
        )";
        $resimSqlCalistir=mysqli_query($baglanti,$resimSql);
        header("Location:oteller.php");
        
    }
    
    ?>
    <div id="icerik">
        <div id="otel-ekle">
            <form action="" method="POST" enctype="multipart/form-data" >
                <p>Otel Adı</p>
                <input type="text" name="otel_adi" required>
                <p>Açıklama</p>
                <textarea name="aciklama" cols="30" rows="10"></textarea>
                <p>Resim</p>
                <input type="file" name="resim" required>
                <p>İl</p>
                <select name="il" required>
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
                <input type="text" name="adres" required>
                <p>Telefon</p>
                <input type="text" name="telefon" required>
                <p>Eposta</p>
                <input type="email" name="eposta" required>
                <button>Otel Ekle</button>
            </form>
            <?php echo $otel_ekle ?>
        </div>
    </div>
    <?php 
        
    
    ?>
</body>
</html>