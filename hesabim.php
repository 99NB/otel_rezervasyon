<?php 
session_start();
ob_start();
?>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <link rel="stylesheet" href="css/hesabim.css" />
    <title>Hesabım - Türkçe Otel</title>
</head>
<body>
<?php include "menu.php" ?>
        <?php 
        include "sql.php";
        $kayitCek="select * from rezervasyon r inner join oteller o on r.otel_id = o.id where musteri_id=".$_SESSION["id"];
        $calistir = mysqli_query($baglanti,$kayitCek);
        
        if(isset($_SESSION["id"])){
    ?>
    <div id="hesabim">
        <div class="ortala">
            <h4 class="hosgeldin">Hoş Geldiniz <?php echo $_SESSION["kullanici_adi"] ?></h4>
            <div class="rezervasyonlar">
                <p style="font-size: 20px;">Rezervasyonlar</p>
                <table border="1">
                    <th>Otel Adı</th>
                    <th>Rezervasyon Tarihi</th>
                    <th>Giriş Tarihi</th>
                    <th>Çıkış Tarihi</th>
                    <th>Yetişkin Sayısı</th>
                    <th>Çocuk Sayısı</th>
                    <?php 
                        
                            while($cal=$calistir->fetch_assoc()){
                        ?>
                    <tr>
                        <td><?php echo $cal["otel_adi"] ?></td>
                        <td><?php echo $cal["rezervasyon_tarihi"] ?></td>
                        <td><?php echo $cal["giris_tarihi"] ?></td>
                        <td><?php echo $cal["cikis_tarihi"] ?></td>
                        <td><?php echo $cal["yetiskin_sayisi"] ?></td>
                        <td><?php echo $cal["cocuk_sayisi"] ?></td>
                    </tr>
                    <?php } }?>
                </table>
            </div>
            <form action="index.php">
                <a href="<?php echo "index.php?cikis=evet"?>">Çıkış Yap</a>
            </form>
        </div>
    </div>
    <?php 
        if(empty($_SESSION["id"])){
            header('Location:giris.php');
        }
        if($_SESSION["admin"]=="evet"){
            header("Location:admin/anasayfa.php");
        }
        
    ?>

<?php include "alt.php" ?>
</body>
</html>