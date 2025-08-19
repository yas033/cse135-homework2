<?php
session_start();
if (isset($_GET["name"])) {
    $_SESSION["name"] = $_GET["name"];
}
$name = isset($_SESSION["name"]) ? $_SESSION["name"] : "yanhua";
?>
<html><body>
<h1>PHP CGI Form</h1>
<p>Current Name: <b><?= $name ?></b></p>
<form method="GET" action="php-cgiform.php">
  Name: <input type="text" name="name"/>
  <input type="submit" value="Set Name"/>
</form>
<br><a href="php-session-1.php">Back to Session Page 1</a>
</body></html>
