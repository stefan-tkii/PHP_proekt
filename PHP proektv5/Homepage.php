
<?php
    session_start();
    if(isset($_SESSION['succsess_login']))
    {
        $user = $_SESSION['username'];
    }

?>

<br>

<!DOCTYPE html>
    <head>
        <title>Home page</title>
        <link rel="stylesheet" type="text/css" href="home_style.css"/>
        <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
    </head>

    <body>
        <div class="container">
        <ul>
            <li>
                <a href="Homepage.php">
                    <div class="icon">
                        <i class="fa fa-home" aria-hidden="true"></i>
                        <i class="fa fa-home" aria-hidden="true"></i>
                    </div>
                    <div class="name"> 
                        <span data-text="Home"> Home </span>
                    </div>
                </a>
            </li>

            <li>
                <a href="sendMail.php">
                    <div class="icon">
                        <i class="fa fa-share" aria-hidden="true"></i>
                        <i class="fa fa-share" aria-hidden="true"></i>
                    </div>
                    <div class="name"> 
                        <span data-text="Contact"> Contact </span>
                    </div>
                </a>
            </li>

            <li>
                <a href="#">
                    <div class="icon">
                        <i class="fa fa-user-circle" aria-hidden="true"></i>
                        <i class="fa fa-user-circle" aria-hidden="true"></i>
                    </div>
                    <div class="name"> 
                        <span data-text="<?php echo($user); ?>"> <?php echo($user); ?> </span>
                    </div>
                </a>
            </li>

            <li>
                <a href="logout.php">
                    <div class="icon">
                        <i class="fa fa-cog" aria-hidden="true"></i>
                        <i class="fa fa-cog" aria-hidden="true"></i>
                    </div>
                    <div class="name"> 
                        <span data-text="Logout"> Logout </span>
                    </div>
                </a>
            </li>
        </ul>
        <div>

    </body>