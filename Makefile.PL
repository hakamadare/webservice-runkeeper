use 5.008003;
use strict;
use warnings;
use inc::Module::Install;
use Module::Install::ReadmeMarkdownFromPod;

name     'WebService-Runkeeper';
all_from 'lib/WebService/Runkeeper.pm';
author   q{Steve Huff <shuff@cpan.org>};
license  'artistic2';

perl_version 5.008003;

tests_recursive('t');

readme_markdown_from 'lib/WebService/Runkeeper.pm';

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
   'Reply'                                  => 0,
   'Test::More'                             => 0,
   'Module::Install::ReadmeMarkdownFromPod' => 0,
);

test_requires (
   'Test::CheckManifest' => '0.9',
);

requires (
   'Moo'              => '2',
   'OAuth::Lite2'     => '0.10',
   'Readonly'         => '2',
   'REST::Client'     => '1',
   'Type::Tiny'       => '1',
   'namespace::clean' => '0.27',
   'strictures'       => '2',
);

install_as_cpan;
auto_install;
WriteAll;
