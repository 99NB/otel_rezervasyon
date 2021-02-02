<?php 
    session_start();
    ob_start();
?>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/giris.css" />
    <title>Giriş - Türkçe Otel</title>
</head>
<body>
    <?php include "menu.php" ?>
    <div id="giris">
        <div class="ortala">
            <div class="form">
                <form action="kontrol.php" method="POST">
                    <p>Kullanici Adi</p>
                    <input type="text" name="kullanici_adi" id="kullanici_adi" required>
                    <p>Şifre</p>
                    <input type="password" name="sifre" id="sifre" required>
                    <button>Giriş Yap</button>
                </form>
            </div>
        </div>
    </div>
    
    <?php 
        if(isset($_SESSION["id"])){
            header('Location:hesabim.php');
        }
        if($_SESSION["admin"]=="evet"){
            header("Location:admin/anasayfa.php");
        }
    ?>
    

    <?php include "alt.php" ?>    
</body>
</html>