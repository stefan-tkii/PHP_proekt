<!DOCTYPE html>

<html>

    <head>
        <title>Register page</title>
        <link rel="stylesheet" type="text/css" href="asset_reg.css"/>
    </head>

    <body> 
            <h1>Registration form</h1>
            <div class="register">
                <form method="POST" action="Login.php" class="regform">
                    <label>First name: </label> <br>
                    <input type="text" name="Fname" class="Fnamec" placeholder="Enter first name" required> <br> <br>

                    <label>Last name: </label> <br>
                    <input type="text" name="Lname" class="Fnamec" placeholder="Enter last name" required> <br> <br>

                    <label>Email: </label> <br>
                    <input type="text" name="Ename" class="Fnamec" placeholder="Enter email address" required> <br> <br>

                    <label>Password: </label> <br>
                    <input type="password" name="Pass" class="Fnamec" placeholder="Enter password" required> <br> <br>

                    <label>Confirm password: </label> <br>
                    <input type="password" name="CPass" class="Fnamec" required> <br> <br>

                    <label>Select your gender: </label> <br>
                    <input type="radio" name="gender" value="male" required> Male
                    <input type="radio" name="gender" value="female"> Female <br> <br>

                    <input type="submit" class="sub" value="Register">
                </form>
            </div>
       
    </body>

</html>