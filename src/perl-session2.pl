#!/usr/bin/perl
use strict;
use warnings;
use CGI;
use CGI::Cookie;

my $cgi = CGI->new;
my %cookies = CGI::Cookie->fetch;
my $name = exists $cookies{'session_name'} ? $cookies{'session_name'}->value : "";

print $cgi->header(-type=>'text/html');
print <<"HTML";
<!DOCTYPE html>
<html>
<head><title>Perl Sessions Page 2</title></head>
<body>
<h1>Perl Sessions Page 2</h1>
<p>Name: $name</p>

<p><a href="/cgi-bin/perl-sessions-1.pl">Session Page 1</a></p>
<p><a href="/perl-cgiform.html">Perl CGI Form</a></p>

<form method="POST" action="/cgi-bin/perl-destroy-session.pl">
  <input type="submit" value="Destroy Session">
</form>
</body>
</html>
HTML

