#!/usr/bin/perl
use strict;
use warnings;
use CGI;
use CGI::Cookie;

my $cgi = CGI->new;
my %cookies = CGI::Cookie->fetch;
my $name = exists $cookies{'session_name'} ? $cookies{'session_name'}->value : "";

if (my $newname = $cgi->param("name")) {
    $name = $newname;
    my $cookie = CGI::Cookie->new(-name=>'session_name', -value=>$name, -path=>'/');
    print $cgi->header(-type=>'text/html', -cookie=>$cookie);
} else {
    print $cgi->header(-type=>'text/html');
}

print <<"HTML";