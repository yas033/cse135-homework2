#!/usr/bin/php-cgi
<?php
  header("Cache-Control: no-cache");
  header("Content-type: text/html\n");

  date_default_timezone_set("America/Los_Angeles"); // 设置为加州时区

  print "<h1>Hello, PHP!</h1>\n";
  print "<p>This page was generated with PHP!</p>\n";

  $date = date("l, F j, Y h:i:s A");
  print "<p>Current Time: $date</p>\n";

  $address = $_SERVER['REMOTE_ADDR'];
  print "<p>Your IP Address: $address</p>\n";
?>
