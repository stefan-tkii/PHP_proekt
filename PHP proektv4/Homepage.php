
<?php
    session_start();
    if(isset($_SESSION['succsess_login']))
    {
        echo $_SESSION['succsess_login'];
        echo "Welcome back ". $_SESSION['username'];
    }
?>