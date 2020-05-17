<?php

if(isset($_POST['send']))
{
    require_once('PHPMailer/PHPMailerAutoload.php');
    session_start();
    try 
    {
        $userMail = htmlspecialchars($_SESSION['email']);
        $server = $_POST['server'];
        $subject = htmlentities($_POST['subject']);
        $pass = $_POST['pass'];
        $msg = htmlspecialchars($_POST['message']);
        $mail = new PHPMailer();
        $mail->isSMTP();
        $mail->SMTPAuth = true;
        $mail->SMTPSecure = 'ssl';
        $mail->Host = $server;
        $mail->Port = 465;
        $mail->Username = $userMail;
        $mail->Password = $pass;
        $mail->setFrom($userMail);
        $mail->Subject = $subject;
        $mail->Body = $msg;
        $mail->isHTML(false);
        $mail->addAddress('hypertextprepstefan@gmail.com');
        $mail->send();
        echo("<script> alert('Mail succsessfully sent!');window.location='Homepage.php'</script>");
    }
    catch(phpmailerException $e)
    {
        echo("<script> alert('$e');window.location='Homepage.php'</script>"); 
    }
    catch(Exception $e)
    {
        echo("<script> alert('$e');window.location='Homepage.php'</script>");  
    }

}

?>