#!/usr/bin/perl

use strict;
use inc::Module::Install;

die "This module is known to exercise a bug in 5.6.0. Please upgrade your perl.\n"
  if $] eq '5.006';

all_from('lib/Getargs/Long.pm');

githubmeta;

requires(
  'Log::Agent' => '0.105',
);

test_requires(
  'Test::More' => 0,
);

WriteAll();
