use utf8;
package MAP::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

MAP::Schema::Result::User

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<user>

=cut

__PACKAGE__->table("user");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 userid

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 password

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 firstname

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 lastname

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "userid",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "password",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "firstname",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "lastname",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 map_boxes

Type: has_many

Related object: L<MAP::Schema::Result::MapBox>

=cut

__PACKAGE__->has_many(
  "map_boxes",
  "MAP::Schema::Result::MapBox",
  { "foreign.user_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 user_roles

Type: has_many

Related object: L<MAP::Schema::Result::UserRole>

=cut

__PACKAGE__->has_many(
  "user_roles",
  "MAP::Schema::Result::UserRole",
  { "foreign.user_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 roles

Type: many_to_many

Composing rels: L</user_roles> -> role

=cut

__PACKAGE__->many_to_many("roles", "user_roles", "role");


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-11-15 18:56:51
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nAjzEV7vF1LVftqV/MUe7w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
