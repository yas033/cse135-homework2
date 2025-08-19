<?php
session_start();
$name = $_SESSION["session_name"] ?? "";
?>
<!DOCTYPE html>
<html>
<head><title>PHP Sessions Page 2</title></head>
<body>
<h1>PHP Sessions Page 2</h1>
<p>Name: <?= htmlspecialchars($name) ?></p>
<p><a href="/cgi-bin/php-sessions-1.php">Session Page 1</a></p>
<p><a href="/php-cgiform.html">PHP CGI Form</a></p>
<form method="POST" action="/cgi-bin/php-destroy-session.php">
  <input type="submit" value="Destroy Session">
</form>
</body>
</html>

