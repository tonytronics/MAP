use utf8;
package MAP::Schema::Result::UserRole;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

MAP::Schema::Result::UserRole

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<user_role>

=cut

__PACKAGE__->table("user_role");

=head1 ACCESSORS

=head2 role_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 user_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "role_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "user_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</role_id>

=item * L</user_id>

=back

=cut

__PACKAGE__->set_primary_key("role_id", "user_id");

=head1 RELATIONS

=head2 role

Type: belongs_to

Related object: L<MAP::Schema::Result::Role>

=cut

__PACKAGE__->belongs_to(
  "role",
  "MAP::Schema::Result::Role",
  { id => "role_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 user

Type: belongs_to

Related object: L<MAP::Schema::Result::User>

=cut

__PACKAGE__->belongs_to(
  "user",
  "MAP::Schema::Result::User",
  { id => "user_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-11-15 18:56:51
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:haTCPCWNjljRlyT72Di2/g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
