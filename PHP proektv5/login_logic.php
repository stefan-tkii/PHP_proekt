<?php
    if(isset($_POST['Login']))
    {
        $username = '';
        $pass = '';
        $email='';
        $errors = array();
        $db = mysqli_connect('localhost', 'root', '', 'php_repository') or die('Could not connect to the database!');
        $username = mysqli_real_escape_string($db, $_POST['username']);
        $pass = mysqli_real_escape_string($db, $_POST['password']);
        $hashed_pass = md5($pass);

        if(empty($username)) { array_push($errors, 'Username field is empty!.');}
        if(empty($pass)) { array_push($errors, 'Password field is empty!');}
        $check_query = "SELECT `password` FROM user WHERE username = '$username';";
        $result = mysqli_query($db, $check_query);
       
        if(mysqli_num_rows($result)>0)
        {
            while($row = mysqli_fetch_assoc($result)) 
            {
                if(!($row['password'] == $hashed_pass))
                {
                    array_push($errors, "Incorrect password.");
                }
            }
        }
        else
        {
            array_push($errors, "Incorrect username.");
        }
        
        if(count($errors)==0)
        {
            if(isset($_POST['remember']))
            {
                setcookie('username', $username, time()+60*60*7);
                setcookie('password', $pass, time()+60*60*7);
            }
            session_start();
            $query = "SELECT `email` FROM user WHERE username = '$username'";
            $res = mysqli_query($db, $query);
            if(mysqli_num_rows($res)>0)
            {
                while($row = mysqli_fetch_assoc($res)) { $_SESSION['email'] = $row['email']; }
            }
            $_SESSION['username'] = $username;
            $_SESSION['succsess_login'] = "You have succsessfully logged in.";
            unset($_SESSION['logout']);
            header("location: Homepage.php");
        }
    }
?>