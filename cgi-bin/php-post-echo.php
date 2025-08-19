#!/usr/bin/php-cgi
<?php
  header("Cache-Control: no-cache");
  header("Content-type: text/html\n");

  echo "<h1>POST Request Echo</h1>";
  if ($_POST) {
    foreach ($_POST as $key => $value) {
      echo "<p>$key = $value</p>";
    }
  } else {
    echo "<p>No POST parameters received.</p>";
  }
?>

