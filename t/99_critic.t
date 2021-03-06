use strict;
use warnings;

use Test::More;
eval {
   require Test::Perl::Critic;
   import  Test::Perl::Critic;
};
plan skip_all => 'Test::Perl::Critic only run for author tests' unless $ENV{AUTHOR_TEST};

plan skip_all => 'Test::Perl::Critic required to criticise code' if $@;

all_critic_ok('lib');
