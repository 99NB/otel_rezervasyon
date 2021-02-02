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
    <title>Admin - Türkçe Otel</title>
</head>
<body style="display: flex;"> 
    <?php include("menu.php") ?>
    <div id="icerik">
        <div style="width: 100%; display: flex; justify-content: center;">
            <div id="son-rezervasyonlar">
                <div class="kart">
                    <div class="kart-baslik"><p>Son Rezervasyonlar</p></div>
                    <div class="kart-icerik">
                        <table >
                            <tr>
                                <th>Müşteri Adı</th>
                                <th>Otel Adı</th>
                                <th>Rezervasyon Tarihi</th>
                            </tr>
                            
                                <?php 
                                    include "../sql.php";
                                    $kayitCek="select m.ad,o.otel_adi,r.rezervasyon_tarihi from rezervasyon r inner join musteri m on r.musteri_id=m.id inner join oteller o on r.otel_id=o.id order by r.id desc limit 10";
                                    $calistir = mysqli_query($baglanti,$kayitCek);
                                    while($cal=$calistir->fetch_assoc()){
                                ?>
                            <tr>
                                    <td><?php echo $cal["ad"] ?></td>
                                    <td><?php echo $cal["otel_adi"] ?></td>
                                    <td><?php echo $cal["rezervasyon_tarihi"] ?></td>
                            </tr>
                            <?php }?>
                           
                        </table>
                    </div>
                </div>
            </div>
            <div id="son-kayitlar" style="margin-right: 30px;">
                <div class="kart">
                        <div class="kart-baslik"><p>Son Kayıtlar</p></div>
                        <div class="kart-icerik">
                            <table >
                                <tr>
                                    <th>Müşteri Adı</th>
                                    <th>Müşteri Soyadı</th>
                                    <th>İl</th>
                                </tr>
                                
                                    <?php 
                                        $kayitCek="select * from musteri order by id desc limit 10";
                                        $calistir = mysqli_query($baglanti,$kayitCek);
                                        while($cal=$calistir->fetch_assoc()){
                                    ?>
                                <tr>
                                        <td><?php echo $cal["ad"] ?></td>
                                        <td><?php echo $cal["soyad"] ?></td>
                                        <td><?php echo $cal["il"] ?></td>
                                </tr>
                                <?php }?>
                            
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        <div>
        <div style="width: 100%; display: flex; justify-content: center;">
                <div id="istatistikler">
                    <div class="kart">
                        <div class="kart-baslik"><p>İstatistikler</p></div>
                            <div class="kart-icerik">
                                <table >
                                    <tr>
                                        <th>Toplam Müşteri</th>
                                        <th>Toplam Otel</th>
                                        <th>Toplam Oda</th>
                                        <th>Toplam Kazanç</th>
                                    </tr>
                                    
                                        <?php 
                                            $musteri="select count(id) as toplam from musteri";
                                            $otel="select count(id) as toplam from oteller";
                                            $oda="select count(id) as toplam from odalar";
                                            $rezervasyon="select sum(tutar) as toplam from rezervasyon";

                                            $calistirMusteri = mysqli_query($baglanti,$musteri);
                                            $calistirOtel = mysqli_query($baglanti,$otel);
                                            $calistirOda = mysqli_query($baglanti,$oda);
                                            $calistirRezervasyon = mysqli_query($baglanti,$rezervasyon);

                                            $calMusteri=$calistirMusteri->fetch_assoc();
                                            $calOtel=$calistirOtel->fetch_assoc();
                                            $calOda=$calistirOda->fetch_assoc();
                                            $calRezervasyon=$calistirRezervasyon->fetch_assoc();
                                        ?>
                                    <tr>
                                            <td><?php echo $calMusteri["toplam"] ?></td>
                                            <td><?php echo $calOtel["toplam"] ?></td>
                                            <td><?php echo $calOda["toplam"] ?></td>
                                            <td><?php echo $calRezervasyon["toplam"] ?>₺</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="bos-alan">
                    
                </div>
        </div>
        </div>
    </div>
</body>
</html>