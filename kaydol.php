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
  <link rel="stylesheet" href="css/kaydol.css" />
    <title>Kayıt Ol - Türkçe Otel</title>
</head>
<body>
    
    <?php include "menu.php" ?>

    <div id="kaydol">
      <div class="ortala">
        <div>
        <form action="kaydol.php" method="POST">
          <p>Kullanıcı Adı</p>
          <input type="text" name="kullanici_adi" id="kullanici_adi" required>
          <p>Şifre</p>
          <input type="password" name="sifre" id="sifre" required>
          <p>Ad</p>
          <input type="text" name="ad" id="ad" required>
          <p>Soyad</p>
          <input type="text" name="soyad" id="soyad" required>
          <p>Telefon</p>
          <input type="text" name="telefon" id="telefon" required>
          <p>Eposta</p>
          <input type="email" name="eposta" id="eposta" required>
          <p>Dogum Tarihi</p>
          <input type="date" name="dogum_tarihi" id="dogum_tarihi" required>
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
          <button name="kayit" type="submit">Kayıt Ol</button>
          
          
          
       
    <?php 
    
    include "sql.php";
    if (isset($_POST['kayit'])) {
	
	

        $veri_cek="INSERT into musteri set
            kullanici_adi='".$_POST["kullanici_adi"]."',
            sifre='".$_POST["sifre"]."',
            ad='".$_POST["ad"]."',
            soyad='".$_POST["soyad"]."',
            telefon='".$_POST["telefon"]."',
            eposta='".$_POST["eposta"]."',
            dogum_tarihi='".$_POST["dogum_tarihi"]."',
            il='".$_POST["il"]."'
            ";
        $kayıt_ekle=mysqli_query($baglanti,$veri_cek);
    }
   
          if(isset($_POST["kayit"])){
          if($kayıt_ekle){
            echo "<p class='kayit_basarili'>Başarıyla kayıt oldunuz</p>";
          }else{
            echo "<p class='kayit_basarisiz'>Kayıt olurken hata</p>";
          }
          }
          
          if(isset($_SESSION["id"])){
            header('Location:hesabim.php');
          }
          if($_SESSION["admin"]=="evet"){
            header("Location:admin/anasayfa.php");
          }
    
    ?>
     </form>
        </div>
      </div>
    </div>
    <?php include "alt.php" ?>

    
          


</body>
</html>