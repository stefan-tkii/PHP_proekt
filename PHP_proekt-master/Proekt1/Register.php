<?php
$msg = '';
$pass = filter_input(INPUT_POST, 'Pass');
$pass_confirm = filter_input(INPUT_POST, 'CPass');
$email = filter_input(INPUT_POST, 'Ename', FILTER_VALIDATE_EMAIL);
//proveri dali e vnesen validen meil

if($email != true && !empty($pass))
{
    $msg = 'Please input valid email';
}

//proveri dali e unikatno username

//proveri dali se sovpagjaad passwords
if($pass != $pass_confirm)
{
    $msg = 'password inputs not matching';
}

// ako se e vo red prati meil 

if($msg == '' && !empty($pass))
{
    $msg = 'cekam_avtentikacija';
}
?>

<!DOCTYPE html>

<html>

    <head>
        <title>Register page</title>
        <link rel="stylesheet" type="text/css" href="asset_reg.css"/>
    </head>

    <body> 
            <h1>Registration form</h1>
            <div class="register">
                <form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" class="regform">
				<?php if($msg == 'cekam_avtentikacija') : ?>
                <p>Check inbox for conformation! NOW!!!</p>
                <div>
                    <!-- ova moze mn podobro PS proveri porta moze da e razlicna kaj tebe -->
                   <p class="para">Back to Login <a class="linke" href="Login.php">Register here</a></p> <hr>
                </div>
				<?php else : ?>	
					<?php if($msg != '') : ?>
						<p class="error"><?php echo $msg ?></p>
						<?php endif; ?>
						<label>First name: </label> <br>
						<input type="text" name="Fname" class="Fnamec" placeholder="Enter first name" required> <br> <br>

						<label>Last name: </label> <br>
						<input type="text" name="Lname" class="Fnamec" placeholder="Enter last name" required> <br> <br>
						
						<label>Username: </label> <br>
						<input type="text" name="Uname" class="Fnamec" placeholder="Enter username" required> <br> <br>

						<label>Email: </label> <br>
						<input type="text" name="Ename" class="Fnamec" placeholder="Enter email address" required> <br> <br>

						<label>Password: </label> <br>
						<input type="password" name="Pass" class="Fnamec" placeholder="Enter password" required> <br> <br>

						<label>Confirm password: </label> <br>
						<input type="password" name="CPass" class="Fnamec" placeholder="Confirm password" required> <br> <br>

						<label>Select your gender: </label> <br>
						<input type="radio" name="gender" value="male" required> Male
						<input type="radio" name="gender" value="female"> Female <br> <br>

						<input type="submit" class="sub" value="Register">
					<?php endif; ?>
					</form>
            </div>
       
    </body>

</html>