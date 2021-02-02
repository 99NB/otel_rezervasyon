<?php 
    session_start();
    ob_start();
    if(!isset($_SESSION["id"])){
        header('Location:index.php');
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/admin.css" />
    <title>Galeri - Türkçe Otel</title>
</head>
<body>
    <?php include("menu.php") ?>
    <div id="icerik">
        <div id="galeri">
            <h3>Galeri</h3>
            <form action="" method="POST" enctype="multipart/form-data">
                <p>Resim Yükle</p>
                <input type="file" name="resim" required>
                <button name="resim_yukle" >Yükle</button>
            </form>
                <div id="resimler">
                    <form action="" method="GET">
                        <?php 
                            include "../sql.php";
                            $kayitCek="select * from resimler";
                            $calistir = mysqli_query($baglanti,$kayitCek);
                            while($cal=$calistir->fetch_assoc()){
                                echo "<div>";
                                echo "<img src=../resim/".$cal["resimler"]." class='galeri-resim' />";
                                echo "<p>".$cal["resimler"]."</p>";
                                echo "<a href='galeri.php?resim_id=".$cal["id"]."'>Sil</a>";
                                echo "</div>";
                            }
                            
                        ?>
                    </form>
                </div>
            
        </div>
        
    </div>
    <?php 
        //dosya yukleme
            $maxBoyut= 5000000;
            $dosyaUzantisi=substr($_FILES["resim"]["name"],-4,4);
            $dosyaAdi=rand(0,9999999).$dosyaUzantisi;
            $dosyaYolu="../resim/".$dosyaAdi;
                
            if($_FILES["resim"]["size"]>$maxBoyut){
                    echo "buyuk dosya";
            }else{
                $d=$_FILES["resim"]["type"];
                if($d=="image/jpeg" || $d=="image/png"){
                    if(is_uploaded_file($_FILES["resim"]["tmp_name"])){
                        $tasi=move_uploaded_file($_FILES["resim"]["tmp_name"],$dosyaYolu);
                        if($tasi){
                        // echo "başarıyla yuklendi";
                        }else{
                            echo "dosya tasınırken hata";
                        }
                    }else{
                        echo "dosya yuklenirken hata";
                    }
            }
            }
        //dosya yukleme bitis
        if(isset($_FILES["resim"])){
            $resimSql="insert into resimler (
                resimler
            )values(
                '".$dosyaAdi."'
            )";
            $resimSqlCalistir=mysqli_query($baglanti,$resimSql);
            header("Refresh:0;url=galeri.php",true,303);
        }
        if(isset($_GET["resim_id"])){
            $resimSilSql="delete from resimler where id=".$_GET["resim_id"];
            $resimSilCalistir=mysqli_query($baglanti,$resimSilSql);
            echo $resimSilSql;
            header("Refresh:0;url=galeri.php",true,303);
        }
    ?>
</body>
</html>