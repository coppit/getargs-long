#!/usr/bin/perl

use strict;
use inc::Module::Install;
use File::Slurp;

die "This module is known to exercise a bug in 5.6.0. Please upgrade your perl.\n" if $] eq '5.006';

all_from('lib/Getargs/Long.pm');

githubmeta;

include(
  'File::Slurp' => 0,
);

requires(
  'Log::Agent' => '0.105',
);

test_requires(
  'Test::More' => 0,
);

license 'perl';
auto_license(holder => 'David Coppit');

WriteAll();

if (auto_tester) {
  my $code = read_file('Makefile');
  $code =~ s/TEST_VERBOSE\s*=\s*0/TEST_VERBOSE=1/ or die "Couldn't enable verbose mode in Makefile";
  write_file('Makefile', $code);
}
