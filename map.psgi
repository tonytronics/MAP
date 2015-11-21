use strict;
use warnings;

use MAP;

my $app = MAP->apply_default_middlewares(MAP->psgi_app);
$app;

