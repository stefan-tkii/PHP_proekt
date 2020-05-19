
<?php
    session_start();
    if(isset($_SESSION['succsess_login']))
    {
        $user = $_SESSION['username'];
    }
    $pageName = "Home page";
    include('navbar.php');
?>

