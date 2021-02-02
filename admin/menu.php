<?php 
    session_start();
    ob_start();
    if(!isset($_SESSION["id"])){
        header('Location:index.php');
    }
?>
<div id="menu">
        <div>
            <h4 class="panel_yazisi">Admin Panel</h4>
            <div >
                <ul class="linkler">
                    <li><a href="http://localhost/otel2/" target="_blank">Siteye Git</a></li>
                    <li><a href="http://localhost/otel2/admin/anasayfa.php">Ana Sayfa</a></li>
                    <li><a href="http://localhost/otel2/admin/galeri.php">Galeri</a></li>
                    <li><a href="http://localhost/otel2/admin/ayarlar.php">Site Ayarları</a></li>
                    <li><a href="http://localhost/otel2/admin/otel_ekle.php">Otel Ekle</a></li>
                    <li><a href="http://localhost/otel2/admin/oda_ekle.php">Oda Ekle</a></li>
                    <li><a href="http://localhost/otel2/admin/uyeler.php">Üyeler</a></li>
                    <li><a href="http://localhost/otel2/admin/oteller.php">Oteller</a></li>
                    <li><a href="http://localhost/otel2/admin/odalar.php">Odalar</a></li>
                    <li><a href="http://localhost/otel2/admin/rezervasyonlar.php">Rezervasyonlar</a></li>
                    <li style="padding-top: 30px;">
                        <form action="index.php">
                            <a href="<?php echo "index.php?cikis=evet"?>">Çıkış Yap</a>
                        </form>
                    </li>
                </ul>
            </div>
            <p class="alt-yazi">Türkçe Otel - Admin Paneli</p>
        </div>

        
</div>