#!/usr/bin/php-cgi
<?php
  header("Cache-Control: no-cache");
  header("Content-type: application/json\n");

  date_default_timezone_set("America/Los_Angeles");
  $date = date("c");
  $ip = $_SERVER['REMOTE_ADDR'];

  $data = array(
    "title" => "Hello, PHP (JSON)!Team: Nicole & Yanhua",
    "time" => $date,
    "IP" => $ip
  );
  echo json_encode($data);
?>
