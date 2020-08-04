#!/usr/bin/env perl -l

use strict;
use warnings;

print "Hello World";

print "\n[1] Operands";

print "(test == test) equals" if ( "test" eq "test" );
print "(test != fail) inequality" if ( "test" ne "fail" );
print "less than" if ( "test" lt "lots of chars" );
print "(test > 1) greater than" if ( "test" gt "1" );
print "(test >= test) greater or equal" if ( "test" ge "test" );

print "\n[2] Functions";

sub method { print @_;}
my $reference = \&method;
&{$reference}("string");

print "\n[3] Lists";
my $vetor = [1 .. 10];
print "\$vetor: ", $vetor;
print "for \$vetor: ";
print for $vetor;
print "for \@\$vetor: ";
print for @$vetor;
print "\\\$vetor: ", \$vetor;
print "scalar \@\$vetor: ", scalar @$vetor;

print "\n[4] Arrays";
my @array = (10,11,12,13,14,15);
print "\@array: ", @array;
print "\\\@array: ", \@array;
print "\$array[2]: ", $array[2];
print "for \@array: ";
print for @array;

print "\n[4] Hashes";
my %hash = (
	chave => "valor",
	numero => 1,
	objeto => \$vetor
);
print "\$hash{chave}: ", $hash{'chave'};
print "foreach my \$k (keys %hash): ";
foreach my $k (keys %hash) {
	print "\t$k => $hash{$k}";
}
print "\%hash: ", %hash;

print "\n[5] References";
print "{r=>5}: ", {r=>5};
my $ref = { r=>6 };
print "\\\$ref: ", \$ref;
print "\$ref: ", $ref;
print "\$ref->{r}: ", $ref->{r};
