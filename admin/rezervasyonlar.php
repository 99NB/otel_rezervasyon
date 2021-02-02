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
    <title>Rezervasyonlar - Türkçe Otel</title>
</head>
<body>
    <?php include("menu.php") ?>
    <div id="icerik">
        <div id="rezervasyonlar">
            <h3>Rezervasyonlar</h3>
            <table>
                <tr>
                    <th>Müşteri Adı</th>
                    <th>Otel Adı</th>
                    <th>Oda Adı</th>
                    <th>Rezervasyon Tarihi</th>
                    <th>Giriş Tarihi</th>
                    <th>Çıkış Tarihi</th>
                    <th>Yetişkin Sayısı</th>
                    <th>Çocuk Sayısı</th>
                    <th>Tutar</th>
                    <th>Ödeme Tipi</th>
                    <th>İşlemler</th>
                </tr>
                <?php 
                    include "../sql.php";
                    $kayitCek="select m.ad,ot.otel_adi,o.oda_adi,r.id,r.rezervasyon_tarihi,r.giris_tarihi,r.cikis_tarihi,r.yetiskin_sayisi,r.cocuk_sayisi,r.tutar,od.odeme_adi from oteller ot inner join rezervasyon r on ot.id=r.otel_id inner join odeme_tip od on od.id=r.odeme_id inner join musteri m on m.id=r.musteri_id inner join odalar o on o.id=r.oda_id";
                    $calistir = mysqli_query($baglanti,$kayitCek);
                    while($cal=$calistir->fetch_assoc()){
                        echo "<tr>";

                        echo "<td>".$cal["ad"]."</td>";
                        echo "<td>".$cal["otel_adi"]."</td>";
                        echo "<td>".$cal["oda_adi"]."</td>";
                        echo "<td>".$cal["rezervasyon_tarihi"]."</td>";
                        echo "<td>".$cal["giris_tarihi"]."</td>";
                        echo "<td>".$cal["cikis_tarihi"]."</td>";
                        echo "<td>".$cal["yetiskin_sayisi"]."</td>";
                        echo "<td>".$cal["cocuk_sayisi"]."</td>";
                        echo "<td>".$cal["tutar"]."₺</td>";
                        echo "<td>".$cal["odeme_adi"]."</td>";
                        echo "<td><a href='?rezervasyonid=".$cal["id"]."'>Sil</a></td>";
                        echo "</tr>";
                    }
                
                ?>
            </table>
        </div>
    </div>
    <?php 
        $sil="delete from rezervasyon where id=".$_GET["rezervasyonid"];
        $silCalistir=mysqli_query($baglanti,$sil);
        if($_GET["rezervasyonid"]){
            echo "<meta http-equiv='refresh' content='0;URL=rezervasyonlar.php'>";
        }
    ?>
</body>
</html>