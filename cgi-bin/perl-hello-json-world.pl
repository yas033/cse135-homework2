#!/usr/bin/perl
use strict;
use warnings;
use JSON;

# Required header for JSON
print "Content-Type: application/json\n\n";

my $time = scalar localtime;
my $ip   = $ENV{'REMOTE_ADDR'} // 'unknown';

# converted to JSON
my %data = (
    message => "This response was generated with the Perl programming language",
    heading => "Yan hua and Nicole are here - Hello, Perl!",
    title   => "Hello, Perl!",
    time    => $time,
    IP      => $ip,
);

print encode_json(\%data);
