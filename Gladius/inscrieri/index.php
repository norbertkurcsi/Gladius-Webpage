<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>GLADIUS | Târgu-Mureș</title>
        <meta name="description" content="Gladius Târgu-Mureș este un club de baschet din Târgu-Mureș, România, care participă în campionatele interene de juniori fete și băieți. Fiind înființat în 2008 are deja un palmares respectabil, realizând performanțe importante pentru oraș.">

        <!-- CSS files -->
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">

        <!-- Lato font family -->
        <link rel="preconnect" href="https://fonts.gstatic.com">

        <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@600&display=swap" rel="stylesheet">

        <!-- ANIMATIONS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

         <!-- Favicon -->
         <link rel="apple-touch-icon" sizes="180x180" href="resources/favicons/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="resources/favicons/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="resources/favicons/favicon-16x16.png">
        <link rel="manifest" href="resources/favicons/site.webmanifest">
        <link rel="mask-icon" href="resources/favicons/safari-pinned-tab.svg" color="#5bbad5">
        <link rel="shortcut icon" href="resources/favicons/favicon.ico">
        <meta name="msapplication-TileColor" content="#da532c">
        <meta name="msapplication-config" content="resources/favicons/browserconfig.xml">
        <meta name="theme-color" content="#ffffff">
    </head>
    </head>

    <body>
    <nav class="navigation-bar sticky">
            <div class="bar">
                <div class="social-links">
                    <ul class="social-links__social-media">
                        <li><a href="https://www.facebook.com/clubulsportiv.gladius"><ion-icon name="logo-facebook"></ion-icon></a></li>
                        <li><a href="https://www.instagram.com/gladius_tgm/"><ion-icon name="logo-instagram"></ion-icon></a></li>
                        <li><a href="#"><ion-icon name="logo-youtube"></ion-icon></a></li>
                    </ul>
                </div>
            </div>
            <div class="bar">
                <div class="menu">
                    <div class="logo-box">
                        <a href="../"><img class="logo-box__logo" src="resources/img/gladius_logo.png" alt="Club logo"></a>
                    </div>
                    <div class="nav-box">
                        <ul class="main-nav">
                            <li><a href="../echipe/">echipe</a></li>
                            <li><a href="../galerie/">galerie</a></li>
                            <li><a href="../club">club</a></li>
                            <li><a href="">înscrieri</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>

        <div class="form">
            <h2>Înscrie-te în clubul nostru</h2>
            <form action="" method="post">
                <label for="1">Nume și prenume:</label>
                <input type="text" name=jucator id=1 placeholder="Nume si prenume..." required><br>

                <label for="2">Vărsta jucătorului:</label>
                <input type="number" name="varsta" id=2 placeholder="Varsta..." required><br>

                <label for="3">Alegeți categoria:</label>
                <select name="categorie" id="3">
                    <?php
                        $conn=mysqli_connect("localhost","root","","gladius_database");

                        $sql="SELECT `categorie` FROM echipe";
                        $table=mysqli_query($conn,$sql);
                        while($row=mysqli_fetch_array($table)){
                            echo '<option value="'.$row['categorie'].'">'.$row['categorie'].'</option>';
                        }
                    ?>
                </select><br>

                <label for="4">Nume și prenume părinte:</label>
                <input type="text" name="parinte" id=4 placeholder="Nume si prenume..." required><br>

                <label for="5">Număr de telefon:</label>
                <input type="tel" name="telefon" id=5 placeholder="0123456789"  required><br>

                <label for="6">E-mail:</label>
                <input type="email" name="email" id=6 placeholder="E-mail..." required><br>

                <input type="submit" name="g" value="Trimite">
            </form>
            
            <?php
                if(isset($_POST['g'])){
                    $jucator=$_POST['jucator'];
                    $varsta=$_POST['varsta'];
                    $categorie=$_POST['categorie'];
                    $parinte=$_POST['parinte'];
                    $telefon=$_POST['telefon'];
                    $email=$_POST['email'];

                    $sql="INSERT into jucatori_noi(`nume`,`varsta`,`categorie`,`parinte`,`telefon`,`email`,`data`)
                    VALUES ('$jucator','$varsta','$categorie','$parinte','$telefon','$email',NOW())";
                    mysqli_query($conn,$sql);

                    $sql="SELECT antrenori.nume,antrenori.prenume FROM antrenori,echipe WHERE echipe.categorie='$categorie' AND `antrenor principal`=antrenori.id";
                    $table=mysqli_query($conn,$sql);
                    $row=mysqli_fetch_array($table);
                    echo '<p>Înscrierea dumneavoastră a fost finalizată cu succes!</p>
                        <p>Antrenorul <b>'.$row['nume'].' '.$row['prenume'].'</b> vă va contacta în cel mai scurt timp pe numărul de telefon al dumneavoastră.';
                }
            ?>
            

        </div>

        <section class="sponsors">
            <h1>Parteneri</h1>
            <div class="content">
                <a href="https://aquaserv.ro/"><img src="resources/img/sp1.jpg" alt="Sponsor 1"></a>
                <a href="https://www.azomures.com/"><img src="resources/img/sp2.jpg" alt="Sponsor 2"></a>
                <a href="https://alexandriongroup.com/?age-verified=4427b6eb81"><img src="resources/img/sp3.png" alt="Sponsor 3"></a>
                <a href="https://sportlife.ro/"><img src="resources/img/sp4.png" alt="Sponsor 4"></a>
                <a href="https://peaksport.ro/?gclid=Cj0KCQjwp86EBhD7ARIsAFkgakgilZUPsVjitNaw04TtY234mRv-2wrJs9S1YlWiowHcZf-DT31ApggaAucSEALw_wcB"><img src="resources/img/sp5.png" alt="Sponsor 5"></a>
            </div>
        </section>
        <footer class="footer">
            <div class="contact">
                <p>CONTACT</p>
                <p><b>Clubul Sportiv Gladius</b><br>Târgu-Mureș, str. Cornești, Nr. 35, județul Mureș</p>
                <p>Tel 0727348373 / 0743.982331 <br> E-mail: clabuc12@yahoo.com</p>
                <a href="https://www.facebook.com/clubulsportiv.gladius"><ion-icon name="logo-facebook"></ion-icon></a>
                <a href="https://www.instagram.com/gladius_tgm/"><ion-icon name="logo-instagram"></ion-icon></a>
                <a href="#"><ion-icon name="logo-youtube"></ion-icon></a>
            </div>
            <div class="creator">
                Created with <ion-icon name="heart"></ion-icon> by: <br>
                <a href="">
                    <h2>Kurcsi Norbert</h2>
                </a>
            </div>
            <div class="copyright">
                Copyright &#169; 2021 by Gladius. All rights reserved.
            </div>
        </footer>

        <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="resources/js/script.js"></script>
    </body>
</html>