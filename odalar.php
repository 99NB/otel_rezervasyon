<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/otel.css" />
    <title>Odalar - Türkçe Otel</title>
</head>
<body>
<?php include "menu.php" ?>
<?php include "sql.php" ?>
    <div id="odalar">
        <div class="ortala">
            <?php 
                
                $kayitCek="select o.id,o.resim,o.oda_adi,o.aciklama,o.yetiskin_fiyat,o.cocuk_fiyat,o.oda_buyuklugu,o.kapasite from odalar o inner join oteller ot on o.otel_id=ot.id where o.otel_id=".$_GET["id"];
                $calistir = mysqli_query($baglanti,$kayitCek);
                while($sql=$calistir->fetch_assoc()){
                    
                        
                            echo "<div class='otel-kart'>";
                            echo "<h4 class='otel-ad'>".$sql["oda_adi"]." ".$sql["oda_buyuklugu"]."m² ".$sql["kapasite"]." kişilik </h4>";
                            echo "<div style='display: flex'>";
                            echo "<img src=resim/".$sql["resim"]." class='otel-resim'>";
                            echo "<div>";
                            echo "<p class='aciklama'>".$sql["aciklama"]."</p>";
                            echo "<p class='aciklama'>Yetişkin Fiyat=".$sql["yetiskin_fiyat"]." ₺</p>";
                            echo "<p class='aciklama'>Çocuk Fiyat=".$sql["cocuk_fiyat"]." ₺</p>";
                            echo "</div>";
                            echo "</div>";
                            echo "<a href='rezervasyon.php?otelid=".$_GET["id"]."&odaid=".$sql["id"]."'>Rezervasyon Yap</a>";
                            echo "</div>";
                
                        
                            
                            
                }
            ?>
        </div>
    </div>
<?php include "alt.php" ?>
    
</body>
</html>