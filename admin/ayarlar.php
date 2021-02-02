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
    <title>Site Ayarları - Türkçe Otel</title>
</head>
<body>
    <?php include("menu.php") ?>
    <?php 
        include "../sql.php";
        $kayitCek="select * from ayarlar";
        $calistir = mysqli_query($baglanti,$kayitCek);
        $cal=$calistir->fetch_assoc();
    
    ?>
    <?php 
        if(isset($_GET["telefon"])){
            $sql="update ayarlar set
                telefon='".$_GET["telefon"]."',
                eposta='".$_GET["eposta"]."',
                footer='".$_GET["footer"]."',
                k1_yazi='".$_GET["k1_yazi"]."',
                k1_link='".$_GET["k1_link"]."',
                k1_resim='".$_GET["k1_resim"]."',
                k2_yazi='".$_GET["k2_yazi"]."',
                k2_link='".$_GET["k2_link"]."',
                k2_resim='".$_GET["k2_resim"]."',
                k3_yazi='".$_GET["k3_yazi"]."',
                k3_link='".$_GET["k3_link"]."',
                k3_resim='".$_GET["k3_resim"]."',
                k4_yazi='".$_GET["k4_yazi"]."',
                k4_link='".$_GET["k4_link"]."',
                k4_resim='".$_GET["k4_resim"]."',
                k5_yazi='".$_GET["k5_yazi"]."',
                k5_link='".$_GET["k5_link"]."',
                k5_resim='".$_GET["k5_resim"]."',
                instagram='".$_GET["instagram"]."',
                youtube='".$_GET["youtube"]."',
                twitter='".$_GET["twitter"]."',
                facebook='".$_GET["facebook"]."',
                alt_k1='".$_GET["alt_k1"]."',
                alt_k2='".$_GET["alt_k2"]."',
                alt_k3='".$_GET["alt_k3"]."',
                alt_k4='".$_GET["alt_k4"]."',
                alt_k5='".$_GET["alt_k5"]."',
                alt_k6='".$_GET["alt_k6"]."',
                alt_k7='".$_GET["alt_k7"]."',
                alt_k8='".$_GET["alt_k8"]."',
                alt_k9='".$_GET["alt_k9"]."',
                alt_k10='".$_GET["alt_k10"]."',
                alt_k11='".$_GET["alt_k11"]."',
                alt_k12='".$_GET["alt_k12"]."',
                alt_k13='".$_GET["alt_k13"]."',
                alt_k14='".$_GET["alt_k14"]."',
                alt_k15='".$_GET["alt_k15"]."',
                alt_k16='".$_GET["alt_k16"]."',
                alt_k17='".$_GET["alt_k17"]."',
                alt_k18='".$_GET["alt_k18"]."',
                alt_k19='".$_GET["alt_k19"]."',
                alt_k20='".$_GET["alt_k20"]."',
                alt_k21='".$_GET["alt_k21"]."'
                
            ";
        $kaydet = mysqli_query($baglanti,$sql);
        header("Location:ayarlar.php");
        
        }
    
    ?>

    <div id="icerik">
        <div id="ayarlar">
            <form action="" method="GET">
                <div style="display: flex;">
                    <div style="margin-right: 50px;">
                        <p>Telefon</p>
                        <input type="text" name="telefon" value="<?php echo $cal["telefon"] ?>" required>
                        <p>Eposta</p>
                        <input type="email" name="eposta" value="<?php echo $cal["eposta"] ?>" required>
                        <p>Footer</p>
                        <input type="text" name="footer" value="<?php echo $cal["footer"] ?>" required>
                        <p>Kategori 1 Yazı</p>
                        <input type="text" name="k1_yazi" value="<?php echo $cal["k1_yazi"] ?>" required>
                        <p>Kategor 1 Link</p>
                        <input type="text" name="k1_link" value="<?php echo $cal["k1_link"] ?>" required>
                        <p>Kategori 1 Resim</p>
                        <input type="text" name="k1_resim" value="<?php echo $cal["k1_resim"] ?>" required>
                        <p>Kategori 2 Yazı</p>
                        <input type="text" name="k2_yazi" value="<?php echo $cal["k2_yazi"] ?>" required>
                        <p>Kategor 2 Link</p>
                        <input type="text" name="k2_link" value="<?php echo $cal["k2_link"] ?>" required>
                        <p>Kategori 2 Resim</p>
                        <input type="text" name="k2_resim" value="<?php echo $cal["k2_resim"] ?>" required>
                        <p>Kategori 3 Yazı</p>
                        <input type="text" name="k3_yazi" value="<?php echo $cal["k3_yazi"] ?>" required>
                        <p>Kategor 3 Link</p>
                        <input type="text" name="k3_link" value="<?php echo $cal["k3_link"] ?>" required>
                        <p>Kategori 3 Resim</p>
                        <input type="text" name="k3_resim" value="<?php echo $cal["k3_resim"] ?>" required>
                    </div>
                    <div>
                        <p>Kategori 4 Yazı</p>
                        <input type="text" name="k4_yazi" value="<?php echo $cal["k4_yazi"] ?>" required>
                        <p>Kategori 4 Link</p>
                        <input type="text" name="k4_link" value="<?php echo $cal["k4_link"] ?>" required>
                        <p>Kategori 4 Resim</p>
                        <input type="text" name="k4_resim" value="<?php echo $cal["k4_resim"] ?>" required>
                        <p>Kategori 5 Yazı</p>
                        <input type="text" name="k5_yazi" value="<?php echo $cal["k5_yazi"] ?>" required>
                        <p>Kategor 5 Link</p>
                        <input type="text" name="k5_link" value="<?php echo $cal["k5_link"] ?>" required>
                        <p>Kategori 5 Resim</p>
                        <input type="text" name="k5_resim" value="<?php echo $cal["k5_resim"] ?>" required>
                        <p>İnstagram</p>
                        <input type="text" name="instagram" value="<?php echo $cal["instagram"] ?>" >
                        <p>Youtube</p>
                        <input type="text" name="youtube" value="<?php echo $cal["youtube"] ?>" >
                        <p>Twitter</p>
                        <input type="text" name="twitter" value="<?php echo $cal["twitter"] ?>" >
                        <p>Facebook</p>
                        <input type="text" name="facebook" value="<?php echo $cal["facebook"] ?>" >
                        
                    </div>
                    <div style="margin-left: 50px;">
                        <p>Alt Kategori 1</p>
                        <input type="text" name="alt_k1" value="<?php echo $cal["alt_k1"] ?>" required>
                        <p>Alt Kategori 2</p>
                        <input type="text" name="alt_k2" value="<?php echo $cal["alt_k2"] ?>" required>
                        <p>Alt Kategori 3</p>
                        <input type="text" name="alt_k3" value="<?php echo $cal["alt_k3"] ?>" required>
                        <p>Alt Kategori 4</p>
                        <input type="text" name="alt_k4" value="<?php echo $cal["alt_k4"] ?>" required>
                        <p>Alt Kategori 5</p>
                        <input type="text" name="alt_k5" value="<?php echo $cal["alt_k5"] ?>" required>
                        <p>Alt Kategori 6</p>
                        <input type="text" name="alt_k6" value="<?php echo $cal["alt_k6"] ?>" required>
                        <p>Alt Kategori 7</p>
                        <input type="text" name="alt_k7" value="<?php echo $cal["alt_k7"] ?>" required>
                        <p>Alt Kategori 8</p>
                        <input type="text" name="alt_k8" value="<?php echo $cal["alt_k8"] ?>" required>
                        <p>Alt Kategori 9</p>
                        <input type="text" name="alt_k9" value="<?php echo $cal["alt_k9"] ?>" required>
                        <p>Alt Kategori 10</p>
                        <input type="text" name="alt_k10" value="<?php echo $cal["alt_k10"] ?>" required>
                        <p>Alt Kategori 11</p>
                        <input type="text" name="alt_k11" value="<?php echo $cal["alt_k11"] ?>" required>
                        <p>Alt Kategori 12</p>
                        <input type="text" name="alt_k12" value="<?php echo $cal["alt_k12"] ?>" required>
                    </div>
                    <div style="margin-left: 50px;">
                        <p>Alt Kategori 13</p>
                        <input type="text" name="alt_k13" value="<?php echo $cal["alt_k13"] ?>" required>
                        <p>Alt Kategori 14</p>
                        <input type="text" name="alt_k14" value="<?php echo $cal["alt_k14"] ?>" required>
                        <p>Alt Kategori 15</p>
                        <input type="text" name="alt_k15" value="<?php echo $cal["alt_k15"] ?>" required>
                        <p>Alt Kategori 16</p>
                        <input type="text" name="alt_k16" value="<?php echo $cal["alt_k16"] ?>" required>
                        <p>Alt Kategori 17</p>
                        <input type="text" name="alt_k17" value="<?php echo $cal["alt_k17"] ?>" required>
                        <p>Alt Kategori 18</p>
                        <input type="text" name="alt_k18" value="<?php echo $cal["alt_k18"] ?>" required>
                        <p>Alt Kategori 19</p>
                        <input type="text" name="alt_k19" value="<?php echo $cal["alt_k19"] ?>" required>
                        <p>Alt Kategori 20</p>
                        <input type="text" name="alt_k20" value="<?php echo $cal["alt_k20"] ?>" required>
                        <p>Alt Kategori 21</p>
                        <input type="text" name="alt_k21" value="<?php echo $cal["alt_k21"] ?>" required>
                    </div>
                </div>
                <button>Kaydet</button>
            </form>
        </div>
    </div>
    
</body>
</html>