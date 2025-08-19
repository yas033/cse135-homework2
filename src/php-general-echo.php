#!/usr/bin/php-cgi
<?php
  header("Cache-Control: no-cache");
  header("Content-type: text/html\n");

  echo "<h1>General Request Echo</h1>";
  echo "<p>Method: ".$_SERVER['REQUEST_METHOD']."</p>";

  $data = file_get_contents("php://input");
  if ($data) {
    echo "<h2>Payload:</h2><pre>$data</pre>";
  } else {
    echo "<p>No payload received.</p>";
  }
?>
