package Paws::Kendra::IndexConfigurationSummary;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::IndexConfigurationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::IndexConfigurationSummary object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::IndexConfigurationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

A summary of information about an index.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

  The Unix timestamp when the index was created.


=head2 Id => Str

  A unique identifier for the index. Use this to identify the index when
you are using operations such as C<Query>, C<DescribeIndex>,
C<UpdateIndex>, and C<DeleteIndex>.


=head2 Name => Str

  The name of the index.


=head2 B<REQUIRED> Status => Str

  The current status of the index. When the status is C<ACTIVE>, the
index is ready to search.


=head2 B<REQUIRED> UpdatedAt => Str

  The Unix timestamp when the index was last updated by the
C<UpdateIndex> operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
