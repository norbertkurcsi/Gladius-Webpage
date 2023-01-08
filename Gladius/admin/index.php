<!DOCTYPE html>
<html lang="en">
    <head>

        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <title>
            Admin Login
        </title>

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
            <div class="photo">
            </div>
            <div class="login">
                <div class="logo">
                    <a href="../"><img src="resources/img/logo.png" alt="The Logo"></a>
                </div>
                <div class="login-box">
                    <form action="" method="POST">
                        <label for="user">Username:</label>
                        <input type="text" id="user" name="username" placeholder="Username...">
                        <label for="pass">Password:</label>
                        <input type="password" id="pass" name="password" placeholder="Password...">
                        <input type="submit" name="g" value="Login">
                    </form>
                    <?php
                        $conn=mysqli_connect("localhost","root","","gladius_database");
                        $ok=0;

                        if(isset($_POST['g'])){
                            $username=$_POST['username'];
                            $password=$_POST['password'];
                            $sql="SELECT `ID`,`Username`,`Password` FROM admin_users";
                            $table=mysqli_query($conn,$sql);
                            while($row=mysqli_fetch_array($table)){
                                if($row['Username']==$username and $row['Password']==$password){
                                    $ok=1;
                                    $id=$row['ID'];
                                }
                            }
                            if($ok==1){
                                header("Location: jbdsasd76asdh3673b632bd/");
                                $sql="SELECT MAX(id) AS i from login_history ";
                                $table=mysqli_query($conn,$sql);
                                $row=mysqli_fetch_array($table);
                                $i=$row['i']+1;

                                $sql="INSERT into login_history(`id`,`user`,`date`) VALUES ('$i','$id',NOW())";
                                mysqli_query($conn,$sql);
                            }
                            else {
                                echo 
                                    '<div class="alert">
                                        <h2>Username sau parolă greșită!</h2>
                                    </div>';  
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
    </body>
</html>