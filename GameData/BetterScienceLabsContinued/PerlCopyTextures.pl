#!/usr/bin/env perl

use warnings;
use strict;
use feature 'say';
use File::Path qw(make_path);
use File::Copy;
use File::Find;
use Cwd;

say "\n\n".'This batch file will copy the missing textures from the inaccessable
Squad/zDeprecated directory for the SXTLT80 part, also known as
the LV-T80 "Robin" Liquid Fuel Engine

Press return to continue';
<STDIN>;

my $todir = 'Squad/Command/Mk1-2Pod/';

make_path($todir);

$todir = cwd()."/$todir";

find(
    sub {
        if (-f) {
            copy( $File::Find::name, $todir )
              or die "Copy Failed: $!";
        }
    },
    ( cwd().'/../Squad/zDeprecated/Parts/Command/Mk1-2Pod/' )
);