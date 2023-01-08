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
        <header>
            <div id="background"></div>
            <nav class="navigation-bar">
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
                            <a href="#home"><img class="logo-box__logo" src="resources/img/gladius_logo.png" alt="Club logo"></a>
                        </div>
                        <div class="nav-box">
                            <ul class="main-nav">
                                <li><a href="echipe/">echipe</a></li>
                                <li><a href="galerie/">galerie</a></li>
                                <li><a href="club/">club</a></li>
                                <li><a href="inscrieri/">înscrieri</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
            <div class="header-text">
                <span class="header-text--top">A <span class="red">team</span> above all,</span>
                <span class="header-text--bottom">above all a <span class="red">team</span>!</span>
            </div>
        </header>

        <section class=ultimele-stiri>
                <h1>Ultimele stiri</h1>
                <div class="grid">
                    <?php
                        $conn=mysqli_connect("localhost","root","","gladius_database");
                        $i=1;
                        $sql="SELECT * FROM stiri ORDER BY id DESC";
                        $table=mysqli_query($conn,$sql);
                        while($row=mysqli_fetch_array($table) and $i<=4){
                            $titlu=str_replace("_"," ",$row['titlu']);

                            if($row['categorie']=='1'){
                                $cat="u14masculin";
                                $nume="U14 Masculin";
                            }
                            if($row['categorie']=='2'){
                                $cat="u13feminin";
                                $nume="U13 Feminin";
                            }
                            if($row['categorie']=='3'){
                                $cat="u13masulin";
                                $nume="U13 Masculin";
                            }
                            if($row['categorie']=='4'){
                                $cat="minifeminin";
                                $nume="MiniFeminin";
                            }
                            if($row['categorie']=='5'){
                                $cat="babymasculin";
                                $nume="BabyMasculin";
                            }
                            echo 
                                '<div class="link"><a class="article-box" href="echipe/'.$cat.'/stiri'.'/'.$row['titlu'].'">
                                    <div class="photo-box">
                                        <img src="echipe/'.$cat.'/stiri'.'/'.$row['titlu'].'/resources/img/cover.jpg" alt="Article photo">
                                    </div>
                                    <div class="title-box">'.
                                        $titlu
                                    .'</div>
                                    <div class="details-box">
                                        <div class="date">'.$row['data'].'</div>
                                    </div>
                                </a>
                                <a href="echipe/'.$cat.'/stiri/" class="categorie">'.$nume.'</a></div>';
                            $i=$i+1;
                        }
                    ?>
                </div>
            </section>
            <section class="trophies">
                <div class="content">
                    <div class="trophie">
                        <img src="resources/img/bronze.png" alt="Gold Trophie">
                        <h2><span>2</span> trofee</h2>
                    </div>
                    <div class="trophie">
                        <img src="resources/img/gold.png" alt="Gold Trophie">
                        <h2><span>1</span> titlu</h2>
                    </div>
                    <div class="trophie">
                        <img src="resources/img/silver.png" alt="Gold Trophie">
                        <h2><span>3</span> trofee</h2>
                    </div>
                </div>
            </section>

            <section class="sign-up">
                <div class="content">
                    <h2>
                        Împreună suntem de neînvins.<br> Alătuă-te nouă și hai să scriem istorie!
                    </h2>
                    <a href="inscrieri/">Înscrie-te</a>
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

                <?php
                    // $conn=mysqli_connect("localhost","al0u8sgbahl3","VernE2002","");

                    // if(mysqli_connect_errno()){
                    //     echo "Failed to connect";
                    //     exit();
                    // }
                    // echo "Connected";
                ?>