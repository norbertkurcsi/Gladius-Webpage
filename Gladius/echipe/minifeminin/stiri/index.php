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

    <body>
            <nav class="sticky">
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
                            <a href="../../../"><img class="logo-box__logo" src="resources/img/gladius_logo.png" alt="Club logo"></a>
                        </div>
                        <div class="nav-box">
                            <ul class="main-nav">
                                <li><a href="../../">echipe</a></li>
                                <li><a href="../../../galerie/">galerie</a></li>
                                <li><a href="../../../club/">club</a></li>
                                <li><a href="../../../inscrieri">înscrieri</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>

            <header>
                <img src="resources/img/minifeminin.jpg" alt="u13 poza grup">
            </header>

                <div class="grid">
                    <!-- <a class="article-box" href="#">
                        <div class="photo-box">
                            <img src="resources/img/u14masculin.jpg" alt="photo">
                        </div>
                        <div class="title-box">
                            Echipele U13 au programate meciuri la finalul săptămânii
                        </div>
                        <div class="details-box">
                            <div class="date">
                                2021.04.28
                            </div>
                            <div class="categorie">
                                U14 Masculin
                            </div>
                        </div>
                    </a> -->

                    <?php
                        $conn=mysqli_connect("localhost","root","","gladius_database");

                        $sql="SELECT * FROM stiri WHERE `categorie`=4";
                        $table=mysqli_query($conn,$sql);
                        while($row=mysqli_fetch_array($table)){
                            $titlu=str_replace("_"," ",$row['titlu']);
                            echo 
                                '<a class="article-box" href="'.$row['titlu'].'">
                                    <div class="photo-box">
                                        <img src="'.$row['titlu'].'/resources/img/cover.jpg" alt="Article photo">
                                    </div>
                                    <div class="title-box">'.
                                        $titlu
                                    .'</div>
                                    <div class="details-box">
                                        <div class="date">'.$row['data'].'</div>
                                        <div class="categorie">MiniFeminin</div>
                                    </div>
                                </a> ';
                        }
                    ?>

                </div>
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