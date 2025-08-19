#!/usr/bin/perl
use strict; use warnings;
use URI::Escape;

print "Content-Type: text/html\n\n";

my $len  = $ENV{CONTENT_LENGTH} // 0;
my $body = '';
read(STDIN, $body, $len) if $len > 0;

# Parse form-encoded body into key/value pairs
my @items;
for my $pair (split /&/, $body) {
  my ($k,$v) = split /=/, $pair, 2;
  $k = uri_unescape($k // '');
  $v = uri_unescape($v // '');
  push @items, [$k,$v];
}

print <<"HTML";
<!doctype html>
<html><head><title>POST Request Echo</title></head>
<body>
<h1 align="center">POST Request Echo</h1>
<hr />
<b>Message Body:</b><br />
<ul>
HTML

for my $it (@items) {
  my ($k,$v) = @$it;
  $v =~ s/&/&amp;/g; $v =~ s/</&lt;/g; $v =~ s/>/&gt;/g;  # escape
  print "<li><b>$k</b>: $v</li>\n";
}

print "</ul></body></html>\n";


