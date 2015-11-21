use strict;
use warnings;
use Test::More;


use Catalyst::Test 'MAP';
use MAP::Controller::Authenticate;

ok( request('/authenticate')->is_success, 'Request should succeed' );
done_testing();
