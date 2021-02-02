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
    <title>Oteller - Türkçe Otel</title>
</head>
<body>
    <?php include("menu.php") ?>
    <div id="icerik">
        <div id="oteller">
                <h3>OTELLER</h3>
                <form action="" method="GET">
                    <table> 
                        <tr>
                            <th>Otel Adı</th>
                            <th>Açıklama</th>
                            <th>İl</th>
                            <th>Adres</th>
                            <th>Telefon</th>
                            <th>Eposta</th>
                            <th>İşlemler</th>
                        </tr>
                        <?php 
                            include "../sql.php";
                            $kayitCek="select * from oteller";
                            $calistir = mysqli_query($baglanti,$kayitCek);
                            while($cal=$calistir->fetch_assoc()){
                                echo "<tr>";
                                echo "<td>".$cal["otel_adi"]."</td>";
                                echo "<td>".$cal["aciklama"]."</td>";
                                echo "<td>".$cal["il"]."</td>";
                                echo "<td>".$cal["adres"]."</td>";
                                echo "<td>".$cal["telefon"]."</td>";
                                echo "<td>".$cal["eposta"]."</td>";
                                echo "<td><a href=otel_duzenle.php?otel_id=".$cal["id"]."> Düzenle</a>
                                    <a href=oteller.php?otel_id=".$cal["id"]."&sil=evet"."> Sil</a> ";
                                echo "</tr>";
                            }

                        ?>
                    </table>
                </form>

            </div>
        </div>
    </div>
    <?php 
        if(isset($_GET["otel_id"]) && isset($_GET["sil"])){
            $kayitSil="delete from oteller where id=".$_GET["otel_id"];
            $kayitSilCal = mysqli_query($baglanti,$kayitSil);
            echo "<meta http-equiv='refresh' content='0;URL=oteller.php'>";
       }
    
    ?>
</body>
</html>