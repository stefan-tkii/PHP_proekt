<?php
    include('send.php')
?>

<!DOCTYPE html>

    <head>
        <meta charset="utf-8">
        <title>Send email</title>
        <link rel="stylesheet" href="form.css" >
    </head>

    <body >
        <div class="container">
            <div class="form-container">
                <h1>
                    Contact Us
                </h1>
                <form method="post" id="reused_form" >
                    <label class="placelabel" for="subject">Subject:</label>
                    <input id="subject" type="text" name="subject" required maxlength="50"> <br> <br>

                    <label class="placelabel" for="pass">Email password:</label>
                    <input id="pass" type="password" name="pass" required maxlength="50"> <br> <br>

                    <label class="placelabel" for="email">Email server:</label> <br>

                    <fieldset>
                    <div class="some-class">
                    <input required checked type="radio" class="radio" name="server" value="smtp.gmail.com" id="x" />
                    <label class="radiolabel" for="x">Gmail</label>
                    <input type="radio" class="radio" name="server" value="smtp.live.com" id="y" />
                    <label class="radiolabel" for="y">Outlook</label>
                    <input type="radio" class="radio" name="server" value="smtp.mail.yahoo.com" id="z" />
                    <label class="radiolabel" for="z">Yahoo</label>
                    </div>
                    </fieldset> <br>

                    <label class="placelabel" for="message">Message:</label>
                    <textarea id="message" name="message" rows="10" maxlength="500" required></textarea>

                    <button class="button-primary" name="send" type="submit" ><b>Send<b></button>
                </form>
            </div>
        </div>
    </body>

</html>