#!/usr/bin/perl

use LWP::Simple;
my $ip = get "http://tnx.nl/ip";
system("/bin/date");
print "Current Public IP: ".$ip."\n\n";
