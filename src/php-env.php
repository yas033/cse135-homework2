#!/usr/bin/php-cgi
<?php
  header("Cache-Control: no-cache");
  header("Content-type: text/plain\n");

  foreach ($_SERVER as $key => $value) {
    echo "$key = $value\n";
  }
?>
