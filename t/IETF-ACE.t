# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl IETF-ACE.t'

use strict;
use diagnostics;

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 3;

BEGIN { use_ok('Unicode::String', qw(utf8), ) };
BEGIN { use_ok('IETF::ACE', qw(UCS4toRACE), ) };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

###


   my $in = "ábcde"; # .com

   my $ucs4 = utf8($in)->ucs4;

   my $out = &UCS4toRACE($ucs4);

   ok($out eq 'bq--adqwey3emu', 'RACE output');

