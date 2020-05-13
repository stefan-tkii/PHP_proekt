<?php
if(isset($_POST['Register'])) 
{
    $fname = "";
    $lname = "";
    $uname = "";
    $pass1 = "";
    $pass2="";
    $email="";
    $bdate="";

    $errors = array();
    $db = mysqli_connect('localhost', 'root', '', 'php_repository') or die('Could not connect to the database!');

    $fname = mysqli_real_escape_string($db, $_POST['Fname']);
    $lname = mysqli_real_escape_string($db, $_POST['Lname']);
    $uname = mysqli_real_escape_string($db, $_POST['Uname']);
    $email = mysqli_real_escape_string($db, $_POST['Ename']);
    $pass1 = mysqli_real_escape_string($db, $_POST['Pass']);
    $pass2 = mysqli_real_escape_string($db, $_POST['CPass']);
    $bdate = $_POST['Bdate'];
    $gender = $_POST['gender'];

    if(empty($fname)) { array_push($errors, 'First name is empty.');}
    if(empty($lname)) { array_push($errors, 'Last name is empty.');}
    if(empty($uname)) { array_push($errors, 'Username is empty.');}
    if(empty($email)) { array_push($errors, 'Email is empty.');}
    if(empty($pass1)) { array_push($errors, 'Password is empty.');}
    if(empty($pass2)) { array_push($errors, 'Please confirm password.');}
    if($pass1 != $pass2) { array_push($errors, 'Passwords do not match.');}
    if(!isset($bdate)) {array_push($errors, "Please enter birth date.");}
    if(!isset($gender)) {array_push($errors, "Please select your gender.");}

    $check_existing_user = "SELECT * FROM user WHERE username = '$uname' OR email = '$email' LIMIT 1";
    $result_query = mysqli_query($db, $check_existing_user);

    if(mysqli_num_rows($result_query)>0)
    {
        while($row = mysqli_fetch_assoc($result_query)) 
        {
            if($row['username'] == $uname) {array_push($errors, 'Username is already taken.');}
            if($row['email'] == $email) {array_push($errors, 'Email is already taken.');}
        }
    }

    if(count($errors)==0)
    {
        $hashed_pass = md5($pass1);
        $insert_query = "INSERT INTO user (firstName, lastName, email, username, `password`, birthDate) VALUES ('$fname', '$lname', '$email', '$uname', '$hashed_pass', '$bdate');";
        mysqli_query($db, $insert_query);
        header("location: Login.php");
    }
}
?>