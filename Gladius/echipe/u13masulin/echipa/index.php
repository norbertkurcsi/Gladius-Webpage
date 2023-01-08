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
                                <li><a href="../../../inscrieri/">înscrieri</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>

            <header>
                <img src="resources/img/u13masculin.jpg" alt="u13 poza grup">
            </header>

            <div class="dropdown">
                <button onclick="myFunction()" class="dropbtn">Echipa &#8595;</button>
                <div id="myDropdown" class="dropdown-content">
                    <div class="header">
                        Jucători: 
                    </div>

                    <?php
                        $conn=mysqli_connect("localhost","root","","gladius_database");

                        $sql="SELECT `id`,`nume`,`prenume` FROM jucatori WHERE echipa='3' AND poza!='#'";

                        $table=mysqli_query($conn,$sql);
                        $i=1;

                        while($row=mysqli_fetch_array($table)){

                            echo 
                                '<a href="#'.$row['id'].'">'.$i.'. '.$row['nume'].' '.$row['prenume'].'</a>';
                            $i=$i+1;
                        }
                    ?>

                    <div class="header">
                        Antrenori: 
                    </div>

                    <?php

                        $sql="SELECT `nume`,`prenume` FROM antrenori,echipe WHERE antrenori.id=echipe.`antrenor principal` AND echipe.id=3";

                        $table=mysqli_query($conn,$sql);;

                        while($row=mysqli_fetch_array($table)){

                            echo 
                                '<a href="#a1">'.$row['nume'].' '.$row['prenume'].'</a>';
                        }

                        $sql="SELECT `nume`,`prenume` FROM antrenori,echipe WHERE antrenori.id=echipe.`antrenor secund` AND echipe.id=3";

                        $table=mysqli_query($conn,$sql);;

                        while($row=mysqli_fetch_array($table)){

                            echo 
                                '<a href="#a2">'.$row['nume'].' '.$row['prenume'].'</a>';
                        }
                    ?>

                </div>
            </div>

            <!-- <section class="player">
                <div class="player-content">
                    

                    <div class="photo">
                        <img src="resources/jucatori/kurcsi_kristof.png" alt="poza jucator">
                    </div>

                    <div class="description">
                        <div class="details">
                            <h3>Data nasteri</h3>
                            <h4>2009.09.03</h4>
                            <h3>loclul nasteri</h3>
                            <h4>targu-mures</h4>
                            <h3>cetatenie</h3>
                            <h4>roman</h4>
                            <h3>inaltime</h3>
                            <h4>1.80cm</h4>
                            <h3>greutate</h3>
                            <h4>50kg</h4>
                        </div>
                        <div class="name">
                            <h1>
                                Kurcsi Kristof
                            </h1>
                            <h2>
                                #0
                            </h2>
                        </div>
                        <div class="drop-menu">
                            
                        </div>
                    </div>
                </div>

                
            </section> -->
            <?php

                $sql="SELECT * FROM jucatori WHERE echipa='3' AND poza!='#'";

                $table=mysqli_query($conn,$sql);

                while($row=mysqli_fetch_array($table)){
                    echo '<section class="player" id="'.$row['id'].'">
                            <div class="player-content">
                                <div class="photo">
                                    <img src="resources/jucatori/'.$row['poza'].'" alt="poza jucator">
                                </div>
                
                                <div class="description">
                                    <div class="details">
                                        <h3>Data nașterii:</h3>
                                        <h4>'.$row['data_nasterii'].'</h4>
                                        <h3>Locul nașterii:</h3>
                                        <h4>'.$row['oras'].'</h4>
                                        <h3>Cetățenie:</h3>
                                        <h4>'.$row['cetatenie'].'</h4>
                                        <h3>Înălțime:</h3>
                                        <h4>'.$row['inaltime'].'</h4>
                                        <h3>Greutate:</h3>
                                        <h4>'.$row['greutate'].'</h4>
                                    </div>
                                    <div class="name">
                                        <h1>'.$row['nume'].' '.$row['prenume'].'</h1>
                                        <h2>'.$row['echipament'].'</h2>
                                    </div>
                                </div>
                            </div>
                            </section>';

                }
            ?>

        <!-- <section class="coach">
                <div class="player-content">
                    

                    <div class="photo">
                        <img src="resources/jucatori/pora_vlad.png" alt="poza antrenor">
                    </div>

                    <div class="description">
                        <div class="details">
                            <h3>Data nasteri</h3>
                            <h4>2009.09.03</h4>
                            <h3>loclul nasteri</h3>
                            <h4>targu-mures</h4>
                            <h3>cetatenie</h3>
                            <h4>roman</h4>
                        </div>
                        <div class="name">
                            <h1>
                                Pora Vlad
                            </h1>
                            <h5>
                                Antrenor principal
                            </h5>
                            <a href="#"><ion-icon name="logo-facebook"></ion-icon></a>
                            <a href="#"><ion-icon name="logo-instagram"></ion-icon></a>
                        </div>
                    </div>
                </div>

                
            </section> -->

            <section class="coach" id="a1">
                <div class="player-content">    
                    <?php
                        $sql="SELECT `nume`,`prenume`,`poza`,`data_nasterii`,`locul_nasterii`,`cetatenie`,`facebook`,`instagram` FROM antrenori,echipe WHERE antrenori.id=echipe.`antrenor principal` AND echipe.id=3";

                        $table=mysqli_query($conn,$sql);

                        $row=mysqli_fetch_array($table);

                        echo 
                            '<div class="photo">
                                <img src="resources/jucatori/'.$row['poza'].'" alt="poza antrenor">
                            </div>
                            
                            <div class="description">
                                <div class="details">
                                    <h3>Data nașterii:</h3>
                                    <h4>'.$row['data_nasterii'].'</h4>
                                    <h3>Locul nașterii:</h3>
                                    <h4>'.$row['locul_nasterii'].'</h4>
                                    <h3>Cetățenie:</h3>
                                    <h4>'.$row['cetatenie'].'</h4>
                                </div>
                                <div class="name">
                                    <h1>'.$row['nume'].' '.$row['prenume'].'</h1>
                                    <h5>Antrenor principal</h5>
                                    <a href="'.$row['facebook'].'"><ion-icon name="logo-facebook"></ion-icon></a>
                                    <a href="'.$row['instagram'].'"><ion-icon name="logo-instagram"></ion-icon></a>
                                </div>
                            </div>';
                    ?>
                </div>
            </section>

            <section class="coach" id="a2">
                <div class="player-content">    
                    <?php
                        $sql="SELECT `nume`,`prenume`,`poza`,`data_nasterii`,`locul_nasterii`,`cetatenie`,`facebook`,`instagram` FROM antrenori,echipe WHERE antrenori.id=echipe.`antrenor secund` AND echipe.id=3";

                        $table=mysqli_query($conn,$sql);

                        $row=mysqli_fetch_array($table);

                        echo 
                            '<div class="photo">
                                <img src="resources/jucatori/'.$row['poza'].'" alt="poza antrenor">
                            </div>
                            
                            <div class="description">
                                <div class="details">
                                    <h3>Data nașterii:</h3>
                                    <h4>'.$row['data_nasterii'].'</h4>
                                    <h3>Locul nașterii:</h3>
                                    <h4>'.$row['locul_nasterii'].'</h4>
                                    <h3>Cetățenie:</h3>
                                    <h4>'.$row['cetatenie'].'</h4>
                                </div>
                                <div class="name">
                                    <h1>'.$row['nume'].' '.$row['prenume'].'</h1>
                                    <h5>Antrenor secund</h5>
                                    <a href="'.$row['facebook'].'"><ion-icon name="logo-facebook"></ion-icon></a>
                                    <a href="'.$row['instagram'].'"><ion-icon name="logo-instagram"></ion-icon></a>
                                </div>
                            </div>';
                    ?>
                </div>
            </section>
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