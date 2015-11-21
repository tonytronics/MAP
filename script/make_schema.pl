#!/usr/bin/env perl
use DBIx::Class::Schema::Loader qw/ make_schema_at /;

my $database = 'MoneyAllocationPlan';
my $user = 'mapuser';
my $password = 'mappassword';


    make_schema_at(
        'MAP::Schema',
        { debug => 1,
          dump_directory => '../lib',
        },
        [ "dbi:mysql:dbname=$database", "$user", "$password"],
    );
