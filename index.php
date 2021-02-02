<?php 
    session_start();
    ob_start();
    $baglanti=mysqli_connect('localhost','root','52924623070','otel');
    //ayarlar
    $kayitCek="select * from ayarlar";
    $ayarlar = mysqli_query($baglanti,$kayitCek);
    $ayar=$ayarlar->fetch_assoc();
?>
<!DOCTYPE html>
<html lang="tr">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
  <link rel="stylesheet" href="css/style.css" />
  <title>Türkçe Otel</title>
</head>

<body>

  
<?php include "menu.php" ?>
  
    <section id="ilk">
      <div class="ortala"  style="display: flex;">
          <div id="otel-ara" class="ortala">
            <div style="display: flex; background-color: #C9383C; padding: 10px;">
              <p style="padding-right:10px;width: 50%;">En Uygun Otel Fiyatlarını Bul</p>
              <p>10,268 otel, daireler, tatil evleri ve daha fazlası</p>
            </div>
            <div id="form">
              <form action="otel.php">
                <p>Gidilecek yer</p>
                <input type="text" name="kategori" id="gidilecek_yer" placeholder="İl adı yazınız" required />
                <div style="display: flex;">
                  <div style="margin-right:20%;">
                    <p>Gidiş Tarihi</p>
                    <input type="date" name="gidis_tarihi" id="gidis_tarihi" required />
                  </div>
                  <div>
                    <p>Dönüş Tarihi</p>
                    <input type="date" name="donus_tarihi" id="donus_tarihi" required />
                  </div>
                </div>
                <p>Kişi Saysısı</p>
                <select name="yetiskin" id="yetiskin" required style="margin-bottom: 20px;">
                  <option value="1">1 Yetişkin</option>
                  <option value="2">2 Yetişkin</option>
                  <option value="3">3 Yetişkin</option>
                  <option value="4">4 Yetişkin</option>
                  <option value="5">5 Yetişkin</option>
                </select>

                <select name="cocuk" id="cocuk" required>
                  <option value="0">Çocuk Yok</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                </select>
                <button>Otel Ara</button>
            </div>

            </form>
          </div>
     
          <div id="slider" class="ortala">
            <img src="resim/kampanya.gif" alt="" />
          </div>
        </div>
    </section>
  

  <section id="bilgi" >
    <div class="ortala" style="display: flex;">

      <div class="bilgi"  >
        <div style="display: flex;">
          <div style="padding: 10px;background-color: #E0A800;border-radius: 100%;">
            <i class="fas fa-check fa-2x" style="color: white;margin-top: 25%;" aria-hidden="true"></i>
          </div>
          <p style="margin-left: 20px;">Ön Ödemesiz <br>
            Rezervasyon</p>
        </div>
        <div class="sari-cizgi"></div>
      </div>

      <div class="bilgi" >
        <div style="display: flex;">
          <div style="padding: 15px;background-color: #C82333;border-radius: 100%;">
            <i class="fas fa-dollar-sign fa-2x" style="color: white;margin-top: 25%;" aria-hidden="true"></i>
          </div>
          <p style="margin-left: 20px;">Ücretsiz <br> 
            İptal</p>
        </div>
        <div class="kirmizi-cizgi"></div>
      </div>

      <div class="bilgi">
        <div style="display: flex;">
          <div style="padding: 10px;background-color: #0069D9;border-radius: 100%;">
            <i class="far fa-clock fa-2x" style="color: white;margin-top: 25%;" aria-hidden="true"></i>
          </div>
          <p style="margin-left: 20px;" >Erken <br> Rezervasyon</p>
        </div>
        <div class="mavi-cizgi"></div>
      </div>

      <div class="bilgi">
        <div style="display: flex;">
          <div style="padding: 10px;background-color: #218838;border-radius: 100%;">
            <i class="fab fa-cc-visa fa-2x" style="color: white;margin-top: 25%;" aria-hidden="true"></i>
          </div>
          <p style="margin-left: 20px;" >Kredi Kartı <br> Gerekmiyor</p>
        </div>
        <div class="yesil-cizgi"></div>
      </div>


    </div>
  </section>

  <section id="kayit-ol">
    <div class="ortala kayit-ol">
      <div>
        <p>Üyelere Özel Ekstra İndirimler</p>
        <p>%25'e Varan Ekstra İndirimleri Görmek İçin</p>
      </div>
      <div>
        <a href="kaydol.php">Üye Ol</a>
      </div>
    </div>
  </section>

  <section id="otel-1">
    <div class="ortala" style="display: flex;">
      <div style="width: 67%;">
        <div class="otel-1" style="background-image: url(resim/<?php echo $ayar["k1_resim"] ?>);">
          <i class="fas fa-map-marker-alt" aria-hidden="true" style="color: #fff;"></i>
          <a href="otel.php?kategori=<?php echo $ayar["k1_link"] ?>" class="otel-link"><?php echo $ayar["k1_yazi"] ?> Otelleri</a>
        </div>
        <div class="otel-2" style="background-image: url(resim/<?php echo $ayar["k2_resim"] ?>);">
          <i class="fas fa-map-marker-alt" aria-hidden="true" style="color: #fff;"></i>
          <a href="otel.php?kategori=<?php echo $ayar["k2_link"] ?>" class="otel-link"><?php echo $ayar["k2_yazi"] ?> Otelleri</a>
        </div>
      </div>
      <!-- SQL BAĞLANTISI -->
      <div id="son-rezervasyon" style="margin-left: 20px;">
        <div id="son-rezervasyon-yazi">Son Rezervasyonlar</div>
      <?php 
        include "sql.php";
        $kayitCek="select * from rezervasyon r inner join oteller o on r.otel_id = o.id order by r.id desc  limit 5";
        $calistir = mysqli_query($baglanti,$kayitCek);
        while($cal=$calistir->fetch_assoc()){
      
      ?>
      
        <div class="son-rezervasyon-detay">
          <div class=" son-rezervasyon-kontrol" style="display: flex;">
            <div class="son-rezervasyon-detay-img"><img src="resim/<?php echo $cal["resim"]; ?>" alt="" class="son-rezervasyon-detay-img">
            </div>
            <h5><?php echo $cal["il"]; ?> noktasında bir kullanıcı <?php echo $cal["otel_adi"]; ?> tesisine az önce yer ayırttı.</h5>
          </div>
        </div>
        <?php  };?>
      </div>

  </section>
  <section id="otel-alt">
    <div class="ortala" style="display: flex;">
      <div class="otel-alt" style="background-image: url(resim/<?php echo $ayar["k3_resim"] ?>);">
        <a href="otel.php?kategori=<?php echo $ayar["k3_link"] ?>"><?php echo $ayar["k3_yazi"] ?> Otelleri</a>
      </div>
      <div class="otel-alt" style="background-image: url(resim/<?php echo $ayar["k4_resim"] ?>);">
        <a href="otel.php?kategori=<?php echo $ayar["k3_link"] ?>"><?php echo $ayar["k4_yazi"] ?> Otelleri</a>
      </div>
      <div class="otel-alt" style="background-image: url(resim/<?php echo $ayar["k5_resim"] ?>);">
        <a href="otel.php?kategori=<?php echo $ayar["k3_link"] ?>"><?php echo $ayar["k5_yazi"] ?> Otelleri</a>
      </div>
    </div>

  </section>
  <!-- ÇIKIŞ İŞLEMİ  -->
  <?php 
    if(($_GET["cikis"])=="evet"){
      session_destroy();
    }
          
  ?>
  <?php include "alt.php" ?>
</body>

</html>