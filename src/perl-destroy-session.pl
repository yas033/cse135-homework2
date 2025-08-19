#!/usr/bin/perl
use strict;
use warnings;
use CGI;
use CGI::Cookie;

my $cgi = CGI->new;

# 清除 cookie
my $cookie = CGI::Cookie->new(
    -name    => 'session_name',
    -value   => '',
    -expires => '-1d',
    -path    => '/'
);

print $cgi->header(-type=>'text/html', -cookie=>$cookie);
print <<"HTML";
<!DOCTYPE html>
<html>
<head><title>Session Destroyed</title></head>
<body>
<h1>Session Destroyed</h1>
<p><a href="/perl-cgiform.html">Back to the Perl CGI Form</a></p>
<p><a href="/cgi-bin/perl-sessions-1.pl">Back to Page 1</a></p>
<p><a href="/cgi-bin/perl-sessions-2.pl">Back to Page 2</a></p>
</body>
</html>
HTML
