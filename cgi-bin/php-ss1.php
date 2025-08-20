<?php
session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST" && !empty($_POST["name"])) {
    $_SESSION["session_name"] = $_POST["name"];
}
$name = $_SESSION["session_name"] ?? "";
?>
<!DOCTYPE html>
<html>
<head><title>PHP Sessions Page 1</title></head>
<body>
<h1>PHP Sessions Page 1</h1>
<p>Name: <?= htmlspecialchars($name) ?></p>
<p><a href="/cgi-bin/php-ss2.php">Session Page 2</a></p>
<p><a href="/php-cgiform.html">PHP CGI Form</a></p>
<form method="POST" action="/cgi-bin/php-destroy-session.php">
  <input type="submit" value="Destroy Session">
</form>
</body>
</html>
