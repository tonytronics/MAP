use utf8;
package MAP::Schema::Result::Session;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

MAP::Schema::Result::Session

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<session>

=cut

__PACKAGE__->table("session");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-11-15 18:56:51
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NbWpGaOx6qU6KumzA2MqqQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
