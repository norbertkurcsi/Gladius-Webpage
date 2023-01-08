<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Gladius | Administrare</title>

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
        <div class="content">
            <div class="photo"></div>
            <div class="admin">
                <div class="bar">
                    <img src="resources/img/logo.png" alt="Logo">
                    <a href="../" class="logout">Deconectare</a>
                    <div class="user">
                        <?php
                            $conn=mysqli_connect("localhost","root","","gladius_database");

                            $sql="SELECT MAX(id) AS id FROM login_history";

                            $table=mysqli_query($conn,$sql);
                            $row=mysqli_fetch_array($table);
                            $id=$row['id'];

                            $sql="SELECT admin_users.ID,admin_users.Name,admin_users.Password FROM admin_users,login_history WHERE login_history.id='$id' AND login_history.user=admin_users.ID";
                            $table=mysqli_query($conn,$sql);
                            $row=mysqli_fetch_array($table);
                            $id=$row['ID'];
                            $user=$row['Name'];

                            echo 'User: '. $row['Name'];

                        ?>
                    </div>
                </div>

                <form action="" method="POST" enctype="multipart/form-data">
                    <h1>
                        Schimbare parolă
                    </h1>
                    <label for="1">Parola veche: </label>
                    <input type="text" name="parola1" placeholder="Parola veche..." id="1">
                    <label for="2">Parola noua: </label>
                    <input type="password" name="parola2" placeholder="Parola nouă..." id="2">
                    <input type="submit" value="Schimba" name="g1">
                    <?php
                        if(isset($_POST['g1'])){
                            $pass1=$_POST['parola1'];
                            $pass2=$_POST['parola2'];

                            if($row['Password']==$pass1 and $pass2!=""){
                                $sql="UPDATE admin_users SET Password='$pass2' WHERE ID='$id'";
                                mysqli_query($conn,$sql);
                                echo 
                                    '<div class="message1">
                                        Parola shimbata!
                                    </div>';
                            }
                            else {
                                echo 
                                    '<div class="message1">
                                        Operatiune nereusita!
                                    </div>';
                            }
                        }
                    ?>
                    <hr>
                    <h1>
                        Postare nouă
                    </h1>
                    <label for="1">Selectati categoria:</label>
                    <select name="cat" id="1">
                        <?php
                            $sql="SELECT `id`,`categorie` FROM echipe";
                            $table=mysqli_query($conn,$sql);
                            while($row=mysqli_fetch_array($table)){
                                echo '<option value="'.$row['id'].'">'.$row['categorie'].'</option>';
                            }
                        ?>
                    </select>
                    <label for="2">Titlul articolului:</label>
                    <input type="text" name="titlu" id="2" placeholder="Titlul..."><br>
                    <label for="poza">Incarca poza de fundal:</label>
                    <input type="file" name="poza" id="poza" id="3"><br>
                    <label for="4">Articol:</label>
                    <textarea name="articol" id="4" cols="80" rows="10"></textarea>
                    <input type="submit" value="Posteaza" name="g2">
                    <?php
                        if(isset($_POST['g2'])){
                            $titlu=$_POST['titlu'];
                            $titlu2=$titlu;
                            $titlu=str_replace(' ','_',$titlu);
                            $categorie=$_POST['cat'];
                            $articol=$_POST['articol'];

                            // CREATE FILES AND DIRECTORIES, UPLOAD THE IMAGE
                            
                            if($categorie==1){
                                $folder_echipe="u14masculin/";
                            }
                            if($categorie==2){
                                $folder_echipe="u13feminin/";
                            }
                            if($categorie==3){
                                $folder_echipe="u13masulin/";
                            }
                            if($categorie==4){
                                $folder_echipe="minifeminin/";
                            }
                            if($categorie==5){
                                $folder_echipe="babymasculin/";
                            }

                            function recurseCopy($src,$dst, $childFolder='') { 

                                $dir = opendir($src); 
                                mkdir($dst);
                                if ($childFolder!='') {
                                    mkdir($dst.'/'.$childFolder);
                            
                                    while(false !== ( $file = readdir($dir)) ) { 
                                        if (( $file != '.' ) && ( $file != '..' )) { 
                                            if ( is_dir($src . '/' . $file) ) { 
                                                $this->recurseCopy($src . '/' . $file,$dst.'/'.$childFolder . '/' . $file); 
                                            } 
                                            else { 
                                                copy($src . '/' . $file, $dst.'/'.$childFolder . '/' . $file); 
                                            }  
                                        } 
                                    }
                                }else{
                                        // return $cc; 
                                    while(false !== ( $file = readdir($dir)) ) { 
                                        if (( $file != '.' ) && ( $file != '..' )) { 
                                            if ( is_dir($src . '/' . $file) ) { 
                                                $this->recurseCopy($src . '/' . $file,$dst . '/' . $file); 
                                            } 
                                            else { 
                                                copy($src . '/' . $file, $dst . '/' . $file); 
                                            }  
                                        } 
                                    } 
                                }
                                
                                closedir($dir); 
                            }

                            $path='../../echipe/'.$folder_echipe.'stiri/'.$titlu.'/resources/img';
                            mkdir($path,0777,true);

                            $target_dir = $path.'/';
                            $target_file = $target_dir . basename($_FILES["poza"]["name"]);
                            move_uploaded_file($_FILES["poza"]["tmp_name"], $target_file);
                            rename($target_file,$target_dir.'cover.jpg');
                            copy('../../echipe/resources/img/gladius_logo.png',$path.'/gladius_logo.png');
                            mkdir('../../echipe/'.$folder_echipe.'stiri/'.$titlu.'/resources/css');
                            mkdir('../../echipe/'.$folder_echipe.'stiri/'.$titlu.'/resources/js');
                            recurseCopy('../../echipe/resources/favicons','../../echipe/'.$folder_echipe.'stiri/'.$titlu.'/resources/favicons');

                            // Make the HTML
                            $php_file=fopen('../../echipe/'.$folder_echipe.'stiri/'.$titlu.'/index.html',"w");
                            $sql="SELECT `categorie` FROM echipe WHERE `id`='$categorie'";
                            $table=mysqli_query($conn,$sql);
                            $row=mysqli_fetch_array($table);
                            fwrite($php_file,'
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
                                                    <a href="../../../../"><img class="logo-box__logo" src="resources/img/gladius_logo.png" alt="Club logo"></a>
                                                </div>
                                                <div class="nav-box">
                                                    <ul class="main-nav">
                                                        <li><a href="../../../">echipe</a></li>
                                                        <li><a href="../../../../galerie/">galerie</a></li>
                                                        <li><a href="../../../../club/">club</a></li>
                                                        <li><a href="../../../../inscrieri/">înscrieri</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </nav>
                            
                                    <header>
                                        <div class="header-title">
                                            <div class="article-title">'.
                                                $titlu2
                                            .'</div>
                                            <div class="article-info">
                                                <div class="categorie">'.
                                                    $row['categorie']
                                                .'</div>
                                                <div class="date">'.
                                                    date("Y.m.d")
                                                .'</div>
                                            </div>
                                            <div class="scroll" id="1">
                                                <a href="#1"><ion-icon name="chevron-down-outline"></ion-icon></a>
                                            </div>
                                        </div>
                                    </header>
                            
                                    <section class="content">
                                        <div class="textbox">'.
                                            $articol
                                        .'</div>
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
                            </html>');
                            fclose($php_file);

                            // MAKE THE CSS
                            $css_file=fopen('../../echipe/'.$folder_echipe.'stiri/'.$titlu.'/resources/css/style.css',"w");
                            fwrite($css_file,"
                            *,
                            *::after,
                            *::before {
                              margin: 0;
                              padding: 0;
                              box-sizing: inherit; }
                            
                            html {
                              font-size: 62.5%; }
                            
                            body {
                              box-sizing: border-box;
                              position: relative; }
                            
                            .row {
                              max-width: 150rem;
                              margin: auto; }
                            
                            .bar {
                              width: 100%; }
                            
                            body {
                              font-family: 'Lato', 'Arial' ,sans-serif;
                              font-size: 2rem;
                              font-weight: 400;
                              line-height: 1.7;
                              color: black;
                              text-rendering: optimizeLegibility;
                              overflow-x: hidden; }
                            
                            header {
                              margin-top: 11rem;
                              width: 100%;
                              height: 70vh;
                              background-image: linear-gradient(rgba(0, 0, 0, 0), black), url(../img/cover.jpg);
                              background-size: cover;
                              background-position: top;
                              position: relative; }
                              header .header-title {
                                position: absolute;
                                bottom: 5%;
                                left: calc(60%/3);
                                width: 60%;
                                margin-left: auto;
                                margin-right: auto; }
                                header .header-title .article-title {
                                  color: white;
                                  font-size: 5rem; }
                                header .header-title .article-info {
                                  margin-top: 10px; }
                                  header .header-title .article-info::after {
                                    content: '';
                                    display: table;
                                    clear: both; }
                                  header .header-title .article-info .categorie {
                                    float: right;
                                    color: white;
                                    border: 2px solid white;
                                    border-radius: 2rem;
                                    padding: 5px 10px; }
                                  header .header-title .article-info .date {
                                    float: left;
                                    color: white; }
                                header .header-title .scroll {
                                  width: 50px;
                                  margin: 0 auto; }
                                  header .header-title .scroll a {
                                    color: white;
                                    font-size: 4rem; }
                            
                            .social-links {
                              background-color: #c62828; }
                              .social-links::after {
                                content: '';
                                display: table;
                                clear: both; }
                              .social-links__social-media {
                                float: right;
                                list-style: none; }
                                .social-links__social-media li {
                                  display: inline-block;
                                  margin-right: 3rem;
                                  margin-top: 0.6rem; }
                                  .social-links__social-media li:last-child {
                                    margin-right: 5rem; }
                                  .social-links__social-media li a:link,
                                  .social-links__social-media li a:visited {
                                    text-decoration: none;
                                    font-size: 2.5rem;
                                    transition: all 0.2s;
                                    color: #2d3436; }
                                  .social-links__social-media li a:hover,
                                  .social-links__social-media li a:active {
                                    color: white; }
                            
                            .menu {
                              background-image: linear-gradient(#811313, #c62828);
                              height: 7rem; }
                              .menu::after {
                                content: '';
                                display: table;
                                clear: both; }
                              .menu .logo-box {
                                width: 15%;
                                float: left;
                                position: relative;
                                margin-top: -70px;
                                margin-left: 2%; }
                                .menu .logo-box__logo {
                                  width: 18rem;
                                  border-radius: 10rem;
                                  border: black; }
                              .menu .nav-box {
                                letter-spacing: 0.3rem;
                                float: left;
                                width: 80%;
                                text-align: center; }
                                .menu .nav-box .main-nav {
                                  list-style: none; }
                                  .menu .nav-box .main-nav li {
                                    display: inline-block;
                                    margin-top: 1.9rem;
                                    margin-right: 10%; }
                                    .menu .nav-box .main-nav li a:link,
                                    .menu .nav-box .main-nav li a:visited {
                                      text-decoration: none;
                                      text-transform: uppercase;
                                      font-size: 2rem;
                                      color: white;
                                      padding-bottom: 8px;
                                      transition: border-bottom 0.1s; }
                                    .menu .nav-box .main-nav li a:hover,
                                    .menu .nav-box .main-nav li a:active {
                                      border-bottom: 3px solid white; }
                            
                            .sticky {
                              position: fixed;
                              top: 0;
                              left: 0;
                              width: 100%;
                              z-index: 9999; }
                              .sticky .logo-box__logo {
                                width: 14rem;
                                margin-top: 4.5rem; }
                            
                            .content {
                              width: 100%;
                              background-image: linear-gradient(#811313, #c62828, grey);
                              padding-top: 2rem;
                              padding-bottom: 2rem; }
                              .content .textbox {
                                width: 65%;
                                margin: 0 auto;
                                padding: 3rem 7rem;
                                border-radius: 5rem;
                                background-color: white; }
                                .content .textbox p {
                                  margin-bottom: 4rem; }
                                  .footer {
                                    height: 35rem;
                                    width: 100%;
                                    background-color: #811313;
                                    color: white;
                                    position: relative; }
                                    .footer::after {
                                      content: '';
                                      display: table;
                                      clear: both; }
                                    .footer .contact {
                                      float: left;
                                      margin-left: 25rem;
                                      padding-top: 5rem;
                                      font-size: 1.5rem; }
                                      .footer .contact p {
                                        margin-bottom: 2rem; }
                                      .footer .contact ion-icon {
                                        font-size: 4rem;
                                        color: white;
                                        margin-right: 2rem;
                                        margin-top: 1rem;
                                        transition: all 0.5s; }
                                        .footer .contact ion-icon:hover {
                                          color: grey; }
                                    .footer .creator {
                                      font-size: 1.5rem;
                                      position: absolute;
                                      right: 2rem;
                                      bottom: 2rem; }
                                      .footer .creator ion-icon {
                                        color: red; }
                                      .footer .creator a {
                                        font-size: 1rem;
                                        text-decoration: none;
                                        color: white;
                                        display: inline-block;
                                        padding: 0.5rem 2rem;
                                        background-color: red;
                                        border: 2px solid black;
                                        border-radius: 3rem;
                                        transition: all 0.5s; }
                                        .footer .creator a:hover {
                                          background-color: grey;
                                          color: black; }
                                    .footer .copyright {
                                      width: 50rem;
                                      text-align: center;
                                      margin: 0 auto;
                                      padding-top: 30rem; }
                            
                            ");
                            fclose($css_file);

                            // MAKE THE JS FILE

                            copy('../../echipe/script.js','../../echipe/'.$folder_echipe.'stiri/'.$titlu.'/resources/js/script.js');

                            // PUT INFORMATION IN THE DATABASE

                            $sql="INSERT INTO stiri(`categorie`,`autor`,`data`,`titlu`,`poza`,`text`)
                            VALUES ('$categorie','$user',NOW(),'$titlu','cover.jpg','$articol')";
                            mysqli_query($conn,$sql);

                        }
                    ?>
                    <hr>
                </form>
            </div>
        </div>
        <script src="//cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
        <script>
            CKEDITOR.replace( 'articol' );
            CKEDITOR.config.width='90%';
            CKEDITOR.config.height='280px';
        </script>

    </body>
</html>