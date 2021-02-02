<?php 
    session_start();
    ob_start();
    if(($_GET["cikis"])=="evet"){
        session_destroy();
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/giris.css" />
    <title>Giriş - Türkçe Otel</title>
</head>
<body>
    <div id="giris">
        <div class="ortala">
            <h4>Admin Giriş Paneli</h4>
            <div id="giris-kontrol">
                <form action="kontrol.php" method="POST">
                    <p>Kullanıcı Adı</p>
                    <input type="text" name="kullanici_adi">
                    <p>Şifre</p>
                    <input type="password" name="sifre">
                    <button>Giriş Yap</button>
                </form>
                
            </div>
        </div>
    </div>
    <?php 
        
        if(isset($_SESSION["id"])){
            echo "<meta http-equiv='refresh' content='1;URL=anasayfa.php'>";
        }
        
    ?>
</body>
</html>