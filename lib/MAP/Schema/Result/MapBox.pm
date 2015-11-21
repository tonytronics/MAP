use utf8;
package MAP::Schema::Result::MapBox;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

MAP::Schema::Result::MapBox

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<map_box>

=cut

__PACKAGE__->table("map_box");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 user_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 balance

  data_type: 'float'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "user_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "balance",
  { data_type => "float", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 user

Type: belongs_to

Related object: L<MAP::Schema::Result::User>

=cut

__PACKAGE__->belongs_to(
  "user",
  "MAP::Schema::Result::User",
  { id => "user_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-11-15 18:39:32
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:r4q5yYRYghRJ7DOSpdonAg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
