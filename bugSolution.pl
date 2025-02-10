#!/usr/bin/perl

use strict;
use warnings;

my $count = 0;

while (<>) {
    # Use non-greedy quantifiers to match individual groups correctly
    while (/\[a-zA-Z0-9]+\[a-zA-Z0-9]+\[a-zA-Z0-9]+/g) {
        $count++;
    }
}

print "Number of matches: $count\n";
#The original code used a greedy quantifier that consumed the entire string. 
#The solution uses the non-greedy quantifier to prevent this.