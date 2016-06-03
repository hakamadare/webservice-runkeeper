
#!perl -T
use 5.008003;
use strict;
use warnings;
use Test::More;

plan tests => 3;

BEGIN {
    use_ok( 'WebService::Runkeeper' ) || print "Bail out!\n";
}

BEGIN {
  my $rk = new_ok( 'WebService::Runkeeper' );

  isa_ok( $rk->client, 'REST::Client' );
}

diag( "Testing object instantiation" );
