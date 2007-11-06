#!/usr/bin/perl

use strict;
use inc::Module::Install;

die "This module is known to exercise a bug in 5.6.0. Please upgrade your perl.\n"
  if $] eq '5.006';

name              ('Getargs-Long');
author            ('David Coppit <david@coppit.org>');
abstract_from     ('lib/Getargs/Long.pm');
version_from      ('lib/Getargs/Long.pm');
license           ('perl');

build_requires    (
                    'Test::More' => 0,
                  );

requires          (
                    'perl' => '5.004',
                    'Log::Agent' => '0.105',
                  );

include           ('ExtUtils/AutoInstall.pm');

auto_include_deps ( );
auto_install      ( );
WriteAll();

print "\n", '-'x78, "\n\n";

exit;
