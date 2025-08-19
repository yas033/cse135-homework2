#!/usr/bin/perl
use strict;
use warnings;

# Required header
print "Content-Type: text/html\n\n";

# HTML content
print <<'HTML';
<html>
<head>
  <title> ello Perl CGI World</title>
</head>
<body>
  <h1 align="center">Yan hua and Nicole are here - Hello HTML World!</h1>
  <hr/>
  <p style='background: orange'>Yo Yan hua and Nicole are here here!</p>
  <p>Hello World</p>
  <p>This page was generated with the Perl programming language</p>
  <p>This program was run at: Mon Aug 18 23:15:29 2025</p>
  <p>Your current IP Address is: 159.89.158.29</p>
</body>
</html>
HTML
