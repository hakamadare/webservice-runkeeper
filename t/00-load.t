#!perl -T
use 5.008003;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'WebService::Runkeeper' ) || print "Bail out!\n";
}

diag( "Testing WebService::Runkeeper $WebService::Runkeeper::VERSION, Perl $], $^X" );
