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
    <title>Odalar - Türkçe Otel</title>
</head>
<body>
    <?php include("menu.php") ?>
    <div id="icerik">
        <div id="odalar">
                <h3>ODALAR</h3>
                <form action="" method="GET">
                    <table> 
                        <tr>
                            <th>Otel Adı</th>
                            <th>Oda Adı</th>
                            <th>Açıklama</th>
                            <th>Yetişkin Fiyat</th>
                            <th>Çocuk Fiyat</th>
                            <th>Kapasite</th>
                            <th>Oda Büyüklüğü</th>
                            <th>İşlemler</th>
                        </tr>
                        <?php 
                            include "../sql.php";
                            $kayitCek="select * from  oteller ot inner join odalar o on o.otel_id = ot.id";
                            $calistir = mysqli_query($baglanti,$kayitCek);
                            while($cal=$calistir->fetch_assoc()){
                                echo "<tr>";
                                echo "<td>".$cal["otel_adi"]."</td>";
                                echo "<td>".$cal["oda_adi"]."</td>";
                                echo "<td>".$cal["aciklama"]."</td>";
                                echo "<td>".$cal["yetiskin_fiyat"]."</td>";
                                echo "<td>".$cal["cocuk_fiyat"]."</td>";
                                echo "<td>".$cal["kapasite"]."</td>";
                                echo "<td>".$cal["oda_buyuklugu"]."</td>";
                                echo "<td><a href=oda_duzenle.php?oda_id=".$cal["id"]."> Düzenle</a>
                                    <a href=odalar.php?oda_id=".$cal["id"]."&sil=evet"."> Sil</a> ";
                                echo "</tr>";
                            }

                        ?>
                    </table>
                </form>

            </div>
        </div>
    </div>
    <?php 
        if(isset($_GET["oda_id"]) && isset($_GET["sil"])){
            $kayitSil="delete from odalar where id=".$_GET["oda_id"];
            $kayitSilCal = mysqli_query($baglanti,$kayitSil);
            echo "<meta http-equiv='refresh' content='0;URL=odalar.php'>";
       }
    
    ?>
</body>
</html>