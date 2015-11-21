use utf8;
package MAP::Schema::Result::Role;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

MAP::Schema::Result::Role

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<role>

=cut

__PACKAGE__->table("role");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "description",
  { data_type => "varchar", is_nullable => 1, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 user_roles

Type: has_many

Related object: L<MAP::Schema::Result::UserRole>

=cut

__PACKAGE__->has_many(
  "user_roles",
  "MAP::Schema::Result::UserRole",
  { "foreign.role_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 users

Type: many_to_many

Composing rels: L</user_roles> -> user

=cut

__PACKAGE__->many_to_many("users", "user_roles", "user");


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-11-15 18:56:51
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:TgBJdwolFSwwl6fV1c55WA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
