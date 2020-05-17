
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
    </head>

    <body>
        <div class="menu-area">
        <ul>
            <li><a href="Homepage.php">Home</a></li>
            <li><a href="sendMail.php">Contact</a></li>
            <li><a href="#"><?php echo($user); ?></a></li>
            <li><a href="Logout.php">Logout</a></li>
            <form method="post" action="#">
            <li><input maxlength="50" type="text" name="seacrh" id="search-box" placeholder="Type to search a game"></li>
            <li><input class="buttonce" type="submit" name="searchbutton" value="Search"></li>
            </form>
        </ul>
        </div>

    </body>