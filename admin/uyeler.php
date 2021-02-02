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
    <title>Uyeler - Türkçe Otel</title>
</head>
<body>
    <?php include("menu.php") ?>
    <div id="icerik">
        <div id="uyeler">
                <h3>ÜYELER</h3>
                <form action="" method="GET">
                    <table> 
                        <tr>
                            <th>Kullanıcı Adı</th>
                            <th>Ad</th>
                            <th>Soyad</th>
                            <th>Telefon</th>
                            <th>Eposta</th>
                            <th>Doğum Tarihi</th>
                            <th>İl</th>
                            <th>İşlemler</th>
                        </tr>
                        <?php 
                            include "../sql.php";
                            $kayitCek="select * from musteri";
                            $calistir = mysqli_query($baglanti,$kayitCek);
                            while($cal=$calistir->fetch_assoc()){
                                echo "<tr>";
                                echo "<td>".$cal["kullanici_adi"]."</td>";
                                echo "<td>".$cal["ad"]."</td>";
                                echo "<td>".$cal["soyad"]."</td>";
                                echo "<td>".$cal["telefon"]."</td>";
                                echo "<td>".$cal["eposta"]."</td>";
                                echo "<td>".$cal["dogum_tarihi"]."</td>";
                                echo "<td>".$cal["il"]."</td>";
                                echo "<td><a href=uye_duzenle.php?musteri_id=".$cal["id"]."> Düzenle</a>
                                    <a href=uyeler.php?musteri_id=".$cal["id"]."&sil=evet"."> Sil</a> ";
                                echo "</tr>";
                            }

                        ?>
                    </table>
                </form>

            </div>
        </div>
    </div>
    <?php 
        if(isset($_GET["musteri_id"]) && isset($_GET["sil"])){
            $kayitSil="delete from musteri where id=".$_GET["musteri_id"];
            $kayitSilCal = mysqli_query($baglanti,$kayitSil);
            echo "<meta http-equiv='refresh' content='0;URL=uyeler.php'>";
       }
    
    ?>
</body>
</html>