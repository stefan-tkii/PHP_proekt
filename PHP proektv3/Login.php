<?php include('server_logic.php') ?>

<!DOCTYPE html>

<head>
    <title>Login page</title>
    <link rel = "stylesheet" type = "text/css" href = "asset.css"/>
</head>

<body class="boddie">
    <div class="container">
        <img src="Assets/avatar.png" class="login_avatar">
        <h1 class="headr">Please fill the form to log in</h1>
        <form action="Homepage.php" method="POST">

        <?php if(isset($_SESSION['succsess_register'])) : ?>
        <h3><strong><?php echo $_SESSION['succsess_register']; ?></strong></h3>
        <?php endif ?>

            <label class="para">Username:</label>
            <input class="txttype" type="text" name="username" placeholder="Enter username">

            <label class="para">Password:</label>
            <input class="txttype" type="password" name="password" placeholder="Enter password">

            <label class="para">Remember me</label>
            <input type="checkbox" name="remember"> <br>

            <p class="para">Don't have an account? <a class="linke" href="Register.php">Register here</a></p> <hr>

            <input class="btntype" type="submit" value="Login">


        </form>

    </div>
</body>