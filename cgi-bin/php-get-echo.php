#!/usr/bin/php-cgi
<?php
  header("Cache-Control: no-cache");
  header("Content-type: text/html\n");

  echo "<h1>GET Request Echo</h1>";
  if ($_GET) {
    foreach ($_GET as $key => $value) {
      echo "<p>$key = $value</p>";
    }
  } else {
    echo "<p>No GET parameters received yet.</p>";
  }
?>
