<?php 
  include "sql.php";
  // $kayitCek="select * from ayarlar";
  // $calistir = mysqli_query($baglanti,$kayitCek);
  // $cal=$calistir->fetch_assoc();
  //ayarlar
  $kayitCek="select * from ayarlar";
  $ayarlar = mysqli_query($baglanti,$kayitCek);
  $ayar=$ayarlar->fetch_assoc();
?>
<footer id="alt">
    <div class="ortala" style="display: flex;">
      <div class="musteri-servis" >
      <p>Kategoriler</p>
        <div style="display: flex; justify-content: space-around;">
            <div>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k1"]?>"><?php echo $ayar["alt_k1"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k2"] ?>"><?php echo $ayar["alt_k2"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k3"] ?>"><?php echo $ayar["alt_k3"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k4"] ?>"><?php echo $ayar["alt_k4"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k5"] ?>"><?php echo $ayar["alt_k5"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k6"] ?>"><?php echo $ayar["alt_k6"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k7"] ?>"><?php echo $ayar["alt_k7"] ?></a>
            </div>
            <div style="margin-left: 20px; margin-right: 20px;">
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k8"] ?>"><?php echo $ayar["alt_k8"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k9"] ?>"><?php echo $ayar["alt_k9"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k10"] ?>"><?php echo $ayar["alt_k10"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k11"] ?>"><?php echo $ayar["alt_k11"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k12"] ?>"><?php echo $ayar["alt_k12"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k13"] ?>"><?php echo $ayar["alt_k13"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k14"] ?>"><?php echo $ayar["alt_k14"] ?></a>
            </div>
            <div>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k15"] ?>"><?php echo $ayar["alt_k15"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k16"] ?>"><?php echo $ayar["alt_k16"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k17"] ?>"><?php echo $ayar["alt_k17"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k18"] ?>"><?php echo $ayar["alt_k18"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k19"] ?>"><?php echo $ayar["alt_k19"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k20"] ?>"><?php echo $ayar["alt_k20"] ?></a>
                <a href="http://localhost/otel2/otel.php?kategori=<?php echo $ayar["alt_k21"] ?>"><?php echo $ayar["alt_k21"] ?></a>
            </div>
          </div>
      </div>
      <div style="margin-left: 20px;">
        <p>Üyeler İçin</p>
        <a href="giris.php">Üye Girişi</a>
        <a href="kaydol.php">Hesap Oluştur</a>
      </div>
      <div id="social-media" style="margin-top: 20px;margin-left: auto;">
        <div style="display: flex;margin-right: 20px;margin-bottom: 10px;">
          <a href="https://www.instagram.com/<?php echo $ayar["instagram"] ?>" target="_blank"><i class="fab fa-instagram fa-4x" style="margin-right: 15px;"></i></a>
          <a href="https://www.youtube.com/<?php echo $ayar["youtube"] ?>" target="_blank"><i class="fab fa-youtube-square fa-4x"></i></a>
        </div>
        <div style="display: flex;">
          <a href="https://www.twitter.com/<?php echo $ayar["twitter"] ?>" target="_blank"><i class="fab fa-twitter-square fa-4x" style="margin-right: 15px;"></i></a>
          <a href="https://www.facebook.com/<?php echo $ayar["facebook"] ?>" target="_blank"><i class="fab fa-facebook-square fa-4x"></i></a>
        </div>
        <p style="margin-top: 15px;">Tel: <?php echo $ayar["telefon"] ?></p>
        <p>Eposta: <?php echo $ayar["eposta"] ?></p>
      </div>
    </div>
  </footer>
  <div id="telif">
    <h4 style="margin-top: 10px;"><?php echo $ayar["footer"] ?>© 2020 tüm hakları saklıdır.</h4>
  </div>