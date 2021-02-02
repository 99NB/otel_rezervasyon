<?php 
    session_start();
    ob_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/otel.css" />
    <title>Otel - Türkçe Otel</title>
</head>
<body>
    <?php include "menu.php" ?>
    <?php include "sql.php" ?>
    <div id="oteller">
    <div class="ortala">
    <?php 
    
    $kayitCek="select * from oteller where il='".$_GET["kategori"]."'";
    $calistir = mysqli_query($baglanti,$kayitCek);
    $_SESSION["gidis_tarihi"]=$_GET["gidis_tarihi"];
    $_SESSION["donus_tarihi"]=$_GET["donus_tarihi"];
    $_SESSION["yetiskin"]=$_GET["yetiskin"];
    $_SESSION["cocuk"]=$_GET["cocuk"];
    while($sql=$calistir->fetch_assoc()){
    ?>
    
        <?php 
           
            echo "<div class='otel-kart'>";
            echo "<h4 class='otel-ad'>".$sql["otel_adi"]."</h4>";
            echo "<div style='display: flex'>";
            echo "<img src=resim/".$sql["resim"]." class='otel-resim'>";
            echo "<div>";
            echo "<p class='aciklama'>".$sql["aciklama"]."</p>";
            echo "<p class='aciklama'>".$sql["adres"]."</p>";
            echo "</div>";
            echo "</div>";
            echo "<a href='odalar.php?id=".$sql["id"]."'>Odaları Gör</a>";
            echo "</div>";

          
            
               
            
        ?>
   
    
    <?php } ?>
    </div>
    </div>
    <?php include "alt.php" ?>
</body>
</html>