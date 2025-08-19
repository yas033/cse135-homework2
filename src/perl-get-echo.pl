#!/usr/bin/perl
use strict; use warnings;

# Required header
print "Content-Type: text/html\n\n";

my $raw = $ENV{'QUERY_STRING'} // '';

# Simple HTML response
print <<"HTML";
<!DOCTYPE html>
<html><head><title>GET Request Echo</title>
</head><body><h1 align="center">GET Request Echo</h1>
<hr>
<p><b/>Raw Query String:</b> </p>
<p>Formatted Query String:</p>
<ul>
</ul></body></html>
HTML

for my $pair (split /&/, $raw) {
    my ($k,$v) = split /=/, $pair, 2;
    print "<li><b>$k</b>: $v</li>\n" if defined $k;
}

print <<"HTML";
</ul>
</body></html>
HTML
