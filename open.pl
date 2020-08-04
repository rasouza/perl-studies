#!/usr/bin/env perl -l

use strict;
use warnings;

open my $fh, '<', '/etc/passwd'
	or die $!;
open my $bashes, '>', 'bashes.txt'
	or die $1;

while ( my $line = <$fh>) {
	chomp $line;
	my ($usr, $sh) = ($line =~ /(\w+):.+:([\/\w]+)/);
	if (defined($sh)) {
		print $bashes "$usr\t\t$sh";
	}

}

close $fh;
close $bashes;
