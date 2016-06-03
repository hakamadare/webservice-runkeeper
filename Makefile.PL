use 5.008003;
use strict;
use warnings;
use inc::Module::Install;

name     'WebService-Runkeeper';
all_from 'lib/WebService/Runkeeper.pm';
author   q{Steve Huff <shuff@cpan.org>};
license  'artistic2';

perl_version 5.008003;

tests_recursive('t');

resources (
   homepage   => 'http://developer.runkeeper.com',
   #IRC        => 'irc://irc.perl.org/#WebService-Runkeeper',
   license    => 'http://www.perlfoundation.org/artistic_license_2_0',
   repository => 'git://github.com/hakamadare/WebService-Runkeeper.git',
   bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=WebService-Runkeeper',
);

configure_requires (
   'Module::Install' => 0,
);

build_requires (
   'Test::More' => 0,
);

requires (
   'JSON::API'  => '1',
   'Moo'        => '2',
   'Type::Tiny' => '1',
   'namespace::clean' => '0.27',
   'strictures' => '2',
);

install_as_cpan;
auto_install;
WriteAll;
